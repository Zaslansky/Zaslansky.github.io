from nltk import Tree
from nltk.draw.util import CanvasFrame
from nltk.draw import TreeWidget
import re
import os

d = {}
clean = open('trees.txt').read()
clean = re.sub( '\s+', ' ', clean ).strip()
#print(clean)
trees = clean.split("%")
for t in trees:
    (key, val) = t.split("$")
    d[str(key)] = val

for key, value in d.items():
    fname = str(key)
    string = value    
    cf = CanvasFrame()
    t = Tree.fromstring(string)
    tc = TreeWidget(cf.canvas(),t)
    x, y, w, h = tc.bbox()
    tc.canvas()['scrollregion'] = (0, 0, w, h)
    tc['node_font'] = 'arial 16 bold'
    tc['leaf_font'] = 'arial 16'
    tc['node_color'] = '#182B49'
    tc['leaf_color'] = '#C69214'
    tc['line_color'] = '#747678'
    cf.add_widget(tc,10,10) # (10,10) offsets
    cf.print_to_file('tmp.ps')
    cf.destroy()
    os.system("convert -density 300x300 tmp.ps  -resize 80% tmp.png".format(fname))
    os.system("convert tmp.png -layers flatten -background white {}.jpg".format(fname))

os.system('rm *.ps')
