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
epub="$name-$(date '+%d.%m.%Y').epub"

rm -f $epub
#download as epub
ebook-convert $recipe $epub -v --epub-max-image-size 150x300

# remove existing files and upload new epub to dir "Rakuten Kobo"
directory=1PN58EKFTbHyndiN83qf-s3GPhicFjWM-
gdrive files list --parent $directory | grep $name | cut --delimiter " " --fields 1 | xargs -I % gdrive files delete %
gdrive files upload --parent $directory $epub