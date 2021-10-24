#!/usr/bin/env sh
# package:
rm dist/ -rf && mkdir dist && \
zip dist/pd2_level_info.zip -r \
src/ \
icon.png mod.txt