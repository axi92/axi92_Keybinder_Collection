penis=0




1::
Loop,
{
    if(penis=1)
    {
		Click
        i++
		tooltip, %i%
    }
    else
    {   
        tooltip,
    }
}
return




MButton::
if(penis=0)
{
    penis=1
    i := 0
    tooltip, Programm Aktiviert
    return
}
if(penis=1)
{
    penis=0
    tooltip, Programm Deaktiviert
    return
}
return