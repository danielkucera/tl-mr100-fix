import sys

fname = sys.argv[1]

fi = open(fname, "rb")
fo = open(fname+".noecc", "wb")

while True:
    data = fi.read(0x800)
    if not data:
        break
    fo.write(data)
    fi.read(0x40)

