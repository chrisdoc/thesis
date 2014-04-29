import re

graph = re.compile(r'\s*\\includegr.*?\}')
with open("thesis.tex") as f:
    for l in f:
		result = graph.match(l)
		if result is not None:
			l= l.replace(".pdf","");
			print l.replace("}",".png}");
		else:
			print l;