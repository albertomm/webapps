#!/bin/bash

set -e
set -u

readonly basedir=$(readlink -f $(dirname "$0"))
readonly dest="$basedir/build/Release"
readonly nativefier="$basedir/node_modules/.bin/nativefier"

$nativefier --maximize --single-instance --name="gmail" --icon="icons/icon-gmail.png" "https://mail.google.com" "$dest"
$nativefier --maximize --single-instance --name="whatsapp"  --icon="icons/icon-whatsapp.png"  "https://web.whatsapp.com" "$dest"
$nativefier --maximize --single-instance --name="soundcloud"  --icon="icons/icon-soundcloud.png" "https://soundcloud.com" "$dest"
$nativefier --maximize --single-instance --name="skype"  --icon="icons/icon-skype.png" "https://web.skype.com" "$dest"
$nativefier --maximize --single-instance --name="netflix"  --icon="icons/icon-netflix.png" "https://www.netflix.com" "$dest"
$nativefier --maximize --single-instance --name="twitch"  --icon="icons/icon-twitch.png" "https://www.twitch.tv" "$dest"
$nativefier --maximize --single-instance --name="keep"  --icon="icons/icon-keep.png" "https://keep.google.com" "$dest"
