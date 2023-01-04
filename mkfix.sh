cp spinand-noconfig.bin spinand-$1.bin

dd if=config-$1.bin of=spinand-$1.bin bs=1 seek=$((0x20000)) conv=notrunc

SNANDer -e
SNANDer -w spinand-$1.bin
