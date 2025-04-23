from nltk import Tree
from nltk.draw.util import CanvasFrame
from nltk.draw import TreeWidget
import re
import os
import fileinput

d = {}
template = open('tree_template.tex').read()
clean = open('trees.txt').read()
clean = re.sub( '\s+', ' ', clean ).strip()
#print(clean)
trees = clean.split("%")
for t in trees:
    (key, val) = t.split("$")
    d[str(key)] = val

for key, value in d.items():
    key = key.strip()
    fname = '/Users/wstyler/Documents/talks/diagrams/tree_' + str(key) + ".tex"
    string = value
    string = re.sub( '\)', ' ]', string )
    #string = re.sub( '\(V ', '\(V\\\\', string )
    #string = re.sub( '\(N ', '\(N\\\\', string )
    #string = re.sub( '\(DET ', '\(DET\\\\', string )
    #string = re.sub( '\(ADJ ', '\(ADJ\\\\', string )
    #string = re.sub( '\(P ', '\(P\\\\', string )
    #string = re.sub( '\(C ', '\(C\\\\', string )
    string = re.sub( '_', '\\_', string )
    string = re.sub( '\(', '[.', string )
    string = "\\Tree" + string + "\n"
    open(fname, 'w').close()
    outfile = open(fname, 'a')
    for line in template:
        #print(line)
        if line.strip() == "~":
            outfile.write(string)
            #print("Yeet!")
        else:
            outfile.write(line)
