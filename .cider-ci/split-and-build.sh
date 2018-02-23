#!/bin/bash -exu

# create a temporay directory
TMPDIR=$(mktemp -d)

# copy this directory there
cp -r . "$TMPDIR"

# delete ZHdK part
rm -rf "$TMPDIR/zhdk"

# cleanup / delete rendered books
rm -rf "${TMPDIR}/_book" "${TMPDIR}/_book_madek"

# modify SUMMARY.md
# delete old intro
sed -e '/Dokumentation/{N;N;N;d;}' "${TMPDIR}/SUMMARY.md"

# replace README.md
mv "${TMPDIR}/madek/madek.md" "${TMPDIR}/README.md"

# redirect in SUMMARY.md
sed -e 's/madek\/madek.md/README.md/g' "${TMPDIR}/SUMMARY.md"

# delete second part
sed -n '/## Medienarchiv/q;p' "${TMPDIR}/SUMMARY.md" > "${TMPDIR}/TMP.md"
mv "${TMPDIR}/TMP.md" "${TMPDIR}/SUMMARY.md"

# build book
npm run gitbook -- build "$TMPDIR"

# copy madek book here
if [ -d ./_book_madek ]; then
	rm -r ./_book_madek
fi
mv "${TMPDIR}/_book" ./_book_madek

rm -rf "$TMPDIR"
