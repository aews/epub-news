#!bin/bash
set -e

# download gdrive

wget https://github.com/glotlabs/gdrive/releases/download/3.9.0/gdrive_linux-x64.tar.gz
tar -xvzf gdrive_linux-x64.tar.gz
mv gdrive /usr/bin/
chmod +x /usr/bin/gdrive

# import gdrive account

echo "$GDRIVE_ACCOUNT_BASE64" | base64 --decode > account.tar
gdrive account import account.tar

# generate epub 
name=heise
recipe=$name.recipe
epub=$name.epub

rm -f $epubName
#download as epub
ebook-convert $recipe $epub

# upload epub, 1PN58EKFTbHyndiN83qf-s3GPhicFjWM- = "Rakuten Kobo"
gdrive files upload --parent 1PN58EKFTbHyndiN83qf-s3GPhicFjWM- $epub