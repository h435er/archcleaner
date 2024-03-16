!/bin/bash
#Author: lenni

echo '                  -`'
echo '                 .o+`'
echo '                `ooo/'
echo '               `+oooo:'
echo '              `+oooooo:'
echo '              -+oooooo+:'
echo '            `/:-:++oooo+:'
echo '           `/++++/+++++++:'
echo '          `/++++++++++++++:'
echo '        `/+++ooooooooooooo/`'
echo '        ./ooosssso++osssssso+`'
echo '       .oossssso-````/ossssss+`'
echo '      -osssssso.      :ssssssso.'
echo '     :osssssss/        osssso+++.'
echo '    /ossssssss/        +ssssooo/-'
echo '  `/ossssso+/:-        -:/+osssso+-'
echo ' `+sso+:-`   Arch Cleaner  `.-/+oso:'
echo '`++:.                           `-/+/'
echo '.`                                 ` '
echo '====Sync database===='
sudo pacman -Syy
echo '====cleaning pacman cache===='
sudo pacman -Scc
sudo paccache -r
echo '====removing unused packages===='
sudo pacman -Qdt
sudo pacman -Rns $(pacman -Qdt)
sudo paccache -rk0
echo '====Arch Linux cleaned===='
