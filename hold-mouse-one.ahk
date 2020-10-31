#MaxThreadsPerHotkey, 2
Toggle := 0

F1::
Toggle := !Toggle
If (Toggle){
   Click, Down
} else {
   Click, Up
}
