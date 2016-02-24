import os

const size=1024
var
  buf: array[size, int8]
  read: int
  i: File

let uflag = paramCount() > 1 and paramStr(1)=="-u"
let slice = if uflag: 1 else: 0
var clp = commandLineParams()
var cl = clp[slice..^1]

if cl.len <= 0:
  cl = @["-"]

for s in cl:
  try:
    if s == "-":
      i = stdin
    else:
      i = open(s)
  except:
    quit(QuitFailure)
  while true:
    read = i.readBytes(buf, 0, size)
    if read <= 0: break
    discard stdout.writeBytes(buf,0, read)
  i.close()


