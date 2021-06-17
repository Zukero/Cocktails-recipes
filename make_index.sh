#!/bin/bash

echo '# Cocktails' > index.md
echo >> index.md
echo '## Les miens' >> index.md
echo >> index.md
for f in $(grep -L '## Source' cocktails/*.md); do echo "[$(basename "$f" | cut -f1 -d. | tr "_" " ")]($f)"; echo; done >> index.md
echo >> index.md
echo '## Les autres' >> index.md
echo >> index.md
for f in $(grep -l '## Source' cocktails/*.md); do echo "[$(basename "$f" | cut -f1 -d. | tr "_" " ")]($f)"; echo; done >> index.md
echo '# Ingrédients' >> index.md
echo >> index.md
for f in ingredients/*.md; do echo "[$(basename "$f" | cut -f1 -d. | tr "_" " ")]($f)"; echo; done >> index.md
