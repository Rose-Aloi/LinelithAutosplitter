state("Linelith")
{
    int puzzlesCompleted : "Linelith.exe", 0x021D8348, 0x188, 0x78, 0xE8, 0x1E8, 0x58, 0x20, 0x308;
    int menuOpen : "Linelith.exe", 0x021D9B80, 0x1D0, 0x108, 0x18, 0x200, 0x58; //This int is 0 if the menu is closed and 0x44900000 if the menue is open
}
init
{

}
startup
{

}
update
{

}
split
{
    return (current.puzzlesCompleted == 100 && old.puzzlesCompleted == 99 || current.puzzlesCompleted == 132 && old.puzzlesCompleted == 131);
}
start 
{
    return (old.menuOpen == 0x44900000) && (current.menuOpen == 0) && (current.puzzlesCompleted == 0);
}
//note: It will start when unpausing a savefile with 0 puzzles completed (rather than starting that file from starting location). This is difficult to fix, may look into it later.
