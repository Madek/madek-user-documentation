#!/bin/bash

# create a temporay directory
TMPDIR=$(mktemp -d)

# copy this directory there
cp -r ./* $TMPDIR

# delete ZHdK part
rm -r "$TMPDIR/zhdk"

# delete rendered books
rm -r "$TMPDIR/_book"
if [ -d "$TMPDIR/_book_madek" ]; then
	rm -r "$TMPDIR/_book_madek"
fi

# modify SUMMARY.md
# delete old intro
sed -i '' -e '/Dokumentation/{N;N;N;d;}' "$TMPDIR/SUMMARY.md"

# replace README.md
mv "$TMPDIR/madek/madek.md" "$TMPDIR/README.md"

# redirect in SUMMARY.md
sed -i '' -e 's/madek\/madek.md/README.md/g' "$TMPDIR/SUMMARY.md"

# delete second part
sed -n '/## Medienarchiv/q;p' "$TMPDIR/SUMMARY.md" > "$TMPDIR/TMP.md"
mv "$TMPDIR/TMP.md" "$TMPDIR/SUMMARY.md"

# build book
gitbook build "$TMPDIR"

# copy madek book here
if [ -d ./_book_madek ]; then
	rm -r ./_book_madek
fi
cp -r "$TMPDIR/_book" ./_book_madek

rm -r $TMPDIR