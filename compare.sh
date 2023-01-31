FILE=$1
FILE2=$2

dd if=$FILE bs=1 count=$((0x20000)) | hd > $FILE.hd1
dd if=$FILE bs=1 skip=$((0x20000)) count=$((0x20000)) | hd > $FILE.hd2
dd if=$FILE2 bs=1 skip=$((0x20000)) count=$((0x20000)) | hd > $FILE2.hd2
meld $FILE.hd1 $FILE.hd2 $FILE2.hd2
#meld $FILE.hd1 $FILE.hd2
