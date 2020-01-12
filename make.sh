#!/bin/bash

# 1行50文字でフォーマット
dartfmt -l 50 --fix -w src

# dartからmarkdownに変換する
dart main.dart > book.md

# markdownからepub3に変換する
cheepub --title flutter --author google book.md
rm book.md

# epub3からmobiに変換する
ebook-convert "book.epub" "book.mobi"
