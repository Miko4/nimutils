import os

let nflag = paramStr(1)=="-n"
let slice = if nflag: 1 else: 0

for i, s in commandLineParams()[slice..paramCount()-1]:
  stdout.write s
  if paramCount()-1==i+slice:
    if not nflag:
      stdout.write "\n"
  else:
    stdout.write " "
