bannertool makebanner -i "assets/banner.png" -a "assets/audio.wav" -o "banner.bnr"
bannertool makesmdh -i "assets/icon.png" -s "Luma3DS updater" -l "Luma3DS updater in lpp-3ds" -p "LiquidFenrir" -o "icon.smdh"
3dstool -cvtf romfs romfs.bin --romfs-dir script
makerom -f cia -o "updater.cia" -elf "lpp-3ds.elf" -rsf "cia_workaround.rsf" -icon "icon.smdh" -banner "banner.bnr" -exefslogo -target t -romfs "romfs.bin"