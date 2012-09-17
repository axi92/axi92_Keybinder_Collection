SpeicherDatei := A_MyDocuments . "\MedicKeybinder\Datei.ini" ;Bitte anpassen
LoginUrl := "http://www.axi92.at/samp/accountcheck.php" ;Bitte anpassen
if(Speicherdatei == A_MyDocuments . "\MedicKeybinder\Datei.ini" || LoginUrl == "http://www.axi92.at/samp/accountcheck.php") {
	MsgBox, 16, FEHLER, Grundeinstellungen nicht getroffen!
	ExitApp
}
OnlineCheck := Ping("www.axi92.at")
IniRead, LoginSpeichern, %SpeicherDatei%, Login, Loginspeichern, 0
IniRead, LoginName, %SpeicherDatei%, Login, LoginName, Dein Name
IniRead, LoginPasswd, %SpeicherDatei%, Login, LoginPasswort, Dein Passwd

Login:
if(OnlineCheck == 0){
	;goto, Main
	ExitApp
	return
}
if(LoginSpeichern != 1){
	Gui, Login:Add, Text, x22 y12 w210 h20 , Dein Login Name
	Gui, Login:Add, Text, x22 y62 w210 h20 , Dein Login Passwort
	Gui, Login:Add, Edit, x22 y32 w210 h20 vLoginName, %LoginName%
	Gui, Login:Add, Edit, x22 y82 w210 h20 vLoginPasswd, %LoginPasswd%
	Gui, Login:Add, CheckBox, x22 y112 w100 h20 Checked%LoginSpeichern% vLoginSpeichern, Speichern
	Gui, Login:Add, CheckBox, x142 y112 w210 h20 vNewAcc, Registrieren
	Gui, Login:Add, Button, x22 y142 w90 h20 gLoginCheck, Login
	Gui, Login:Add, Button, x142 y142 w90 h20 gLoginAbbruch, Abbruch
	Gui, Login:Show, w259 h181, Login
	return
} else {
	goto, LoginCheck
}
return

LoginCheck:
Gui, Login:Submit, NoHide
Gui, Login:Destroy
IniWrite, %LoginSpeichern%, %SpeicherDatei%, Login, Loginspeichern
if(LoginSpeichern == 1){
	IniWrite, %LoginName%, %SpeicherDatei%, Login, LoginName
	IniWrite, %LoginPasswd%, %SpeicherDatei%, Login, LoginPasswort
}
if(NewAcc == 1){
	RegisterTrue := HttpDownload("http://www.axi92.at/samp/admincheck.php?name=&pass=&useradd=" Loginname "&passwd=" LoginPasswd "&level=1")
	if not InStr(RegisterTrue, "Der Account wurde erfolgreich erstellt"){
		MsgBox, 20, Fehler,  Die Accounterstellung war nicht erfolgreich`, folgender Fehler trat auf `n`n%RegisterTrue%`n`nErneut versuchen?
		IfMsgBox, Yes
			Goto, Login
		IfMsgBox, No
			ExitApp
		return
	} else {
		goto, Main
		return
	}
return
}

LoginTrue := HttpDownload(LoginUrl "?name=" Loginname "&pass=" LoginPasswd)
if InStr(LoginTrue, "Erfolgreich eingeloggt"){
	RegExMatch(LoginTrue, "Adminlevel: (.*)",Str)
	AdminLevel := Str1
	LoginErfolgreich := "1"
	goto, main
} else {
	MsgBox, 20, Fehler, Ihr Login war nicht Richtig `nFolgenes wurde zurückgegeben`n`n%LoginTrue%`n`nWollen sie es erneut versuchen?
	IfMsgBox, Yes
	{
		IniWrite, 0, %MainDir%\Settings\Config.ini, Login, Loginspeichern
		LoginSpeichern := "0"
		goto, Login
	}
	ExitApp
}

return
LoginAbbruch:
ExitApp
return

HttpDownload(url, method="GET", headers="", content="", requestencoding="utf-8", responseencoding="utf-8", maxMB=0, proxy="", proxybypass="")
{
  return Http(url, method, headers, content, requestencoding, proxy, proxybypass).readContent(responseencoding, maxMB)
}

HttpDownloadHeader(url, headers="", content="", encoding="utf-8", proxy="", proxybypass="")
{
  return Http(url, "HEAD", headers, content, encoding, proxy, proxybypass).queryHeader(0, 0)
}

Http(url, method="GET", headers="", content="", contentencoding="utf-8", proxy="", proxybypass="")
{
  global cHttp
  return new cHttp(url, method, headers, content, contentencoding, proxy, proxybypass)
}

class cHttp
{
  __new(url, method="GET", headers="", content="", contentencoding="utf-8", proxy="", proxybypass="")
  {
    if (!regexmatch(url, "(http(?P<secure>s?)://)?(?P<host>[^/]+)(?P<res>.*)", m))
      return 0
    if (instr(mhost, "@"))
      regexmatch(mhost, "(?P<user>[^:@]*):?(?P<pwd>[^@]*)@(?P<host>.+)", m)
    if (instr(mhost, ":"))
      regexmatch(mhost, "(?P<host>[^:]+):(?P<port>.*)", m)
    if (!isobject(headers))
      headers := []
    DllCall("LoadLibrary", "str", "wininet")
    h := this._handles := []
    agent := (headers["User-Agent"]) ? headers["User-Agent"] "" : "AutoHotkey/" A_AhkVersion
    headers.remove("User-Agent")
    if (proxy)
      h.hInternet := DllCall("wininet\InternetOpenW", "wstr", agent, "uint", 3, "wstr", proxy, "wstr", proxybypass, "uint", 0, "ptr")
    else
      h.hInternet := DllCall("wininet\InternetOpenW", "wstr", agent, "uint", 1, "ptr", 0, "ptr", 0, "uint", 0, "ptr")
    if (!h.hInternet)
      return 0
    host := mhost
    port := (mport) ? mport : ((msecure) ? 443 : 80)
    if (muser && mpwd)
      h.hConnect := DllCall("wininet\InternetConnectW", "ptr", h.hInternet, "wstr", host, "ushort", port, "wstr", muser, "wstr", mpwd, "uint", 3, "uint", 0, "ptr", 0, "ptr")
    else
      h.hConnect := DllCall("wininet\InternetConnectW", "ptr", h.hInternet, "wstr", host, "ushort", port, "ptr", 0, "ptr", 0, "uint", 3, "uint", 0, "ptr", 0, "ptr")
    if (!h.hConnect)
      return 0
    if (!method)
      method := "GET"
    res := (mres) ? mres : "/"
    if (referer := (headers["Referer"]) ? headers["referer"] : "")
    {
      VarSetCapacity(breferer, StrPut(referer, "utf-16"))
      StrPut(referer, &breferer, "utf-16")
      preferer := &breferer
    }
    else
      preferer := 0
    headers.remove("Referer")
    if (accept := (headers["Accept"]) ? headers["Accept"] : "*/*")
    {
      aaccept := []
      acceptlen := 0
      Loop, parse, accept, `,
      {
        acceptnum := A_Index
        aaccept[A_Index] := A_LoopField
        acceptlen += StrPut(A_LoopField, "utf-16")*2
      }
      VarSetCapacity(baccept, (acceptnum+1)*A_PtrSize+acceptlen, 0)
      o := (acceptnum+1)*A_PtrSize
      for i, value in aaccept
      {
        NumPut(&baccept+o, baccept, (i-1)*A_PtrSize, "ptr")
        o += StrPut(value, &baccept+o, "utf-16")*2
      }
      paccept := &baccept
    }
    else
      paccept := 0
    headers.remove("Accept")
    flags := ((msecure) ? (0x00800000) : 0) | 0x04000000 | 0x80000000
    if (!h.hRequest := DllCall("wininet\HttpOpenRequestW", "ptr", h.hConnect, "wstr", method, "wstr", res, "ptr", 0, "ptr", preferer, "ptr", paccept, "uint", flags, "ptr", 0, "ptr"))
      return 0
    pcontent := contentlength := 0
    if (isobject(content))
    {
      if (content.seek(0))
      {
        if (contentlength := content.length)
        {
          VarSetCapacity(bcontent, contentlength, 0)
          content.rawread(&bcontent, contentlength)
          content.seek(0)
          pcontent := &bcontent
        }
      }
      else
      {
        if (!headers["Content-Type"])
          headers["Content-Type"] := "application/x-www-form-urlencoded"
        for key, value in content
          scontent .= ((scontent) ? "&" : "") UrlEncode(key) "=" UrlEncode(value)
        charlength := ((contentencoding="utf-16" || contentencoding="cp1200") ? 2 : 1)
        contentlength := StrPut(scontent, contentencoding)*charlength
        VarSetCapacity(bcontent, contentlength, 0)
        StrPut(scontent, &bcontent, contentlength/charlength, contentencoding)
        pcontent := &bcontent
      }
    }
    else if (content)
    {
      if (!headers["Content-Type"])
        headers["Content-Type"] := "text/plain"
      charlength := ((contentencoding="utf-16" || contentencoding="cp1200") ? 2 : 1)
      contentlength := StrPut(content, contentencoding)*charlength
      VarSetCapacity(bcontent, contentlength, 0)
      StrPut(content, &bcontent, contentlength/charlength, contentencoding)
      pcontent := &bcontent
    }
    headers.remove("Content-Length")
    if (!contentlength)
      headers.remove("Content-Type")
    for key, value in headers
      sheaders .= key ": " value "`r`n"
    sheaders := substr(sheaders, 1, -2)
    headerslength := StrPut(sheaders, "utf-16")
    if (!DllCall("wininet\HttpSendRequestW", "ptr", h.hRequest, "wstr", sheaders, "uint", headerslength, "ptr", pcontent, "uint", contentlength))
      return 0
  }
  __delete()
  {
    h := this._handles
    for i, handle in [h.hRequest, h.hConnect, h.hInternet]
    {
      if (handle)
        DllCall("wininet\InternetCloseHandle", "ptr", handle)
    }
  }
  readContent(byref length=0, encoding="utf-8", maxMB=0)
  {
    charlength := ((encoding="utf-16" || encoding="cp1200") ? 2 : 1)
    length := this.getContent(buffer, maxMB)
    return (length>0) ? StrGet(&buffer, floor(length/charlength), encoding) : ""
  }
  readNextContent(byref length=0, encoding="utf-8")
  {
    charlength := ((encoding="utf-16" || encoding="cp1200") ? 2 : 1)
    length := this.getNextContent(buffer)
    return (length>0) ? StrGet(&buffer, floor(length/charlength), encoding) : ""
  }
  saveContent(file, maxMB=0)
  {
    if (!isobject(file))
      file := FileOpen(file, "w")
    if (!file)
      return 0
    while (length := this.getNextContent(buffer))
    {
      if (file.rawwrite(&buffer, length)<length)
        return 0
    }
    return (length=-1) ? 0 : length
  }
  saveNextContent(file, append=true, maxMB=0)
  {
    if (!isobject(file))
      file := FileOpen(file, "w" ((append) ? "+" : ""))
    if (!file)
      return 0
    if ((length := this.getNextContent(buffer))<=0)
      return 0
    file.seek(0, 2)
    if (file.rawwrite(&buffer, length)<length)
      return 0
    return length
  }
  getContent(byref buffer, maxMB=0)
  {
    contentlength := 0
    while ((length := this.getNextContent(newbuffer))>0 && (!maxMB || length+contentlength<1024*1024*maxMB))
    {
      offset := contentlength
      contentlength += length
      if (offset)
      {
        VarSetCapacity(tmpbuffer, offset)
        DllCall("RtlMoveMemory", "ptr", &tmpbuffer, "ptr", &buffer, "ptr", offset)
      }
      VarSetCapacity(buffer, contentlength)
      if (offset)
        DllCall("RtlMoveMemory", "ptr", &buffer, "ptr", &tmpbuffer, "ptr", offset)
      DllCall("RtlMoveMemory", "ptr", &buffer+offset, "ptr", &newbuffer, "ptr", length)
    }
    return (length=-1) ? -1 : contentlength
  }
  getNextContent(byref buffer)
  {
    VarSetCapacity(bsize, 4, 0)
    if (!DllCall("wininet\InternetQueryDataAvailable", "ptr", this._handles.hRequest, "ptr", &bsize, "uint", 0, "ptr", 0))
      return -1
    length := NumGet(bsize, 0, "uint")
    VarSetCapacity(buffer, length, 0)
    VarSetCapacity(bread, 4, 0)
    if (!DllCall("wininet\InternetReadFile", "ptr", this._handles.hRequest, "ptr", &buffer, "uint", length, "ptr", &bread))
      return -1
    return NumGet(bread, 0, "uint")
  }
  queryStatus(array=false)
  {
    if (!(code := this.query(19, 0, 0, 1)) || !(text := this.query(20, 0, 0, 1)))
      return (array) ? 0 : ""
    if (array)
      return {"code":code, "text":text}
    return code " " text
  }
  queryHeader(header="", array=false)
  {
    if (header)
      return this.query(65535, header, array, 0)
    header := regexreplace(this.query(22, 0, 0, 1), "`r`n", "`n")
    if (!array)
      return header
    result := []
    Loop, parse, header, `n
    {
      if (A_Index=1 || !regexmatch(A_LoopField, "(?P<key>[^:]+):\s+(?P<value>.*)", m))
        continue
      result[mkey] .= ((result[mkey]) ? "`n" : "") mvalue
    }
    return result
  }
  query(infolevel, buffer="", array=false, break=false)
  {
    lasterror := A_LastError
    DllCall("SetLastError", "uint", 0)
    index := 0
    if (array)
      result := []
    while (1)
    {
      VarSetCapacity(bbufferlen, 4, 0)
      NumPut(bufferlen := StrPut(buffer, "UTF-16")*2, bbufferlen, 0, "uint")
      VarSetCapacity(bindex, 4, 0)
      NumPut(index, bindex, 0, "uint")
      VarSetCapacity(bbuffer, bufferlen, 0)
      StrPut(buffer, &bbuffer, bufferlen/2, "UTF-16")
      if (!DllCall("wininet\HttpQueryInfoW", "ptr", this._handles.hRequest, "uint", infolevel, "ptr", &bbuffer, "ptr", &bbufferlen, "ptr", &bindex))
      {
        if (A_LastError=122)
        {
          bufferlen := NumGet(bbufferlen, 0, "uint")
          VarSetCapacity(bbuffer, bufferlen, 0)
          StrPut(buffer, &bbuffer, bufferlen/2, "UTF-16")
          if (!DllCall("wininet\HttpQueryInfoW", "ptr", this._handles.hRequest, "uint", infolevel, "ptr", &bbuffer, "ptr", &bbufferlen, "ptr", &bindex))
            return (array) ? 0 : ""
        }
        else if (A_LastError=12150)
          break
        else
          return (array) ? 0 : ""
      }
      bufferlen := NumGet(bbufferlen, 0, "uint")
      index := NumGet(bindex, 0, "uint")
      str := StrGet(&bbuffer, bufferlen/2, "UTF-16")
      if (array)
        result.insert(str)
      else
        result .= ((result="") ? "" : "`n") str
      if (break)
        break
    }
    DllCall("SetLastError", "uint", lasterror)
    return result
  }
}

UrlEncode(url)
{
  static hex := {0:0, 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:"A", 11:"B", 12:"C", 13:"D", 14:"E", 15:"F"}
  url := regexreplace(url, "(`r`n|`r|`n)", "`r`n")
  Loop, parse, url
  {
    if (regexmatch(A_LoopField, "[A-Za-z0-9\-_.~]"))
      encoded .= A_LoopField
    else
    {
      VarSetCapacity(char, 5, 0)
      Loop, % StrPut(A_LoopField, &char, 5, "utf-8")-1
      {
        chrnum := NumGet(char, A_Index-1, "uchar")
        encoded .= "%" hex[chrnum>>4] hex[chrnum&0xf]
      }
    }
  }
  return encoded
}

UrlDecode(url)
{
  VarSetCapacity(decoded, strlen(url), 0)
  len := strlen(url)
  i := 1
  o := 0
  while (i<len)
  {
    c := Substr(url, i, 1)
    i += 1
    if (c!="%")
      NumPut(asc(c), decoded, o, "uchar")
    else
    {
      NumPut("0x" substr(url, i, 2), decoded, o, "uchar")
      i += 2
    }
    o += 1
  }
  return StrGet(&decoded, o, "utf-8")
}

Ping(site)
{
   For objStatus in ComObjGet("winmgmts:").ExecQuery("Select * From Win32_PingStatus where Address = '" site "'")
   {
      return objStatus.StatusCode == 0
   }
   return false
}

Main: