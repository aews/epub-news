#!bin/bash
set -e

# import gdrive account
echo "$GDRIVE_ACCOUNT_BASE64" | base64 --decode > account.tar
gdrive account import account.tar
gdrive files list

# gen epub 
rm -f heise.epub
ebook-convert heise.recipe heise.epub

# upload epub, 1PN58EKFTbHyndiN83qf-s3GPhicFjWM- = "Rakuten Kobo"
gdrive files upload --parent 1PN58EKFTbHyndiN83qf-s3GPhicFjWM- heise.epub