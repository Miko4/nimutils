import os

let s = if paramCount() > 0:
           commandLineParams()[0]
        else:
           "y"

while true:
  echo s
