#!bin/sh
echo "{\"\":{\"personal\":\"$DROPBOX_PERSONAL_TOKEN\"}}" > ~/.config/dbxcli/auth.json
dbxcli ls
rm -f heise.epub
ebook-convert heise.recipe heise.epub
mkdir -p ./.config/dbxcli/
dbxcli put ./heise.epub "/Apps/Rakuten Kobo/heise.epub"