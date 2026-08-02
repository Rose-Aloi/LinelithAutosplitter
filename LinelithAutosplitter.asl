state("Linelith")
{
    //int puzzlesCompleted : "Linelith.exe", 0x021D9B80, 0x78, 0xE8, 0x1E8, 0x58, 0x20, 0x308;
    int puzzlesCompleted : "Linelith.exe", 0x021D8348, 0x188, 0x78, 0xE8, 0x1E8, 0x58, 0x20, 0x308;
    //int puzzlesCompleted : "Linelith.exe", 0x1F7D3058;
}
init
{
    print("[Autosplitter] INIT");
    //print(current.puzzlesCompleted);
}
startup
{
    //print("[Autosplitter] startup");
    //print(current.puzzlesCompleted);
}
update
{
    //print("[Autosplitter] update");
    //print(current.puzzlesCompleted);
}
split
{
    return (current.puzzlesCompleted == 100 && old.puzzlesCompleted == 99 || current.puzzlesCompleted == 132 && old.puzzlesCompleted == 131);
    //print("[autosplitter] split");
    return false;
}