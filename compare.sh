meld <( dd if=$1 bs=1 count=$((0x20000)) | hd ) <( dd if=$1 bs=1 skip=$((0x20000)) count=$((0x20000)) | hd ) <( dd if=$2 bs=1 skip=$((0x20000)) count=$((0x20000)) | hd )
