#! /bin/bash

CV="$HOME/Dropbox/CV - Admissions/cv_latex/Awesome-CV/MyCV/cv.pdf"
WEBSITE_CV="$HOME/Dev/website/coltonkinstley.github.io/assets/ckinstley_cv.pdf"
WEBSITE="$HOME/Dev/website/coltonkinstley.github.io/"

cp -v "$CV" "$WEBSITE_CV"
git -C  "$WEBSITE" checkout dev && git -C "$WEBSITE" add "$WEBSITE_CV" && git -C "$WEBSITE" commit -m 'Updated CV.'