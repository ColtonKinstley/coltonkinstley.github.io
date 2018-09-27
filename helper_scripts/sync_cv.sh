#! /bin/bash

CV="$HOME/Dropbox/CV - Admissions/cv_latex/Awesome-CV/MyCV/cv.pdf"
WEBSITE_CV="$HOME/develop/coltonkinstley.github.io/assets/ckinstley_cv.pdf"
WEBSITE="$HOME/develop/coltonkinstley.github.io/"

cp -v "$CV" "$WEBSITE_CV"
git -C  "$WEBSITE" checkout develop && git -C "$WEBSITE" add "$WEBSITE_CV" && git -C "$WEBSITE" commit -m 'Updated CV.'
