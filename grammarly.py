import sys
import re

with open(sys.argv[1]) as f:
    markup = f.read()

markup = re.sub(r'\\citep\{(.*?)\}', r'(\1)', markup)
markup = re.sub(r'\\[Cc]ref\{.*?\}', '[Reference]', markup)
markup = re.sub(r'\\begin\{figure\}.*?\\end\{figure\}', '', markup)
markup = re.sub(r'[\n]{2,}', '_____PARAGRAPH_____', markup)
markup = markup.replace("\n", ' ')
markup = markup.replace('_____PARAGRAPH_____', '\n\n')
markup = re.sub(r'\\.+?\{(.*?)\}', r'\1', markup)

print(markup)
