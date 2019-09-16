#!/bin/bash

set -e
set -u

readonly basedir=$(readlink -f $(dirname "$0"))
readonly dest="$basedir/build/Release"
readonly useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
readonly nativefier="$basedir/node_modules/.bin/nativefier"

$nativefier --maximize --single-instance --user-agent="$useragent" --name="gmail" --icon="icons/icon-gmail.png" "https://mail.google.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="whatsapp"  --icon="icons/icon-whatsapp.png"  "https://web.whatsapp.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="soundcloud"  --icon="icons/icon-soundcloud.png" "https://soundcloud.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="skype"  --icon="icons/icon-skype.png" "https://web.skype.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="netflix"  --icon="icons/icon-netflix.png" "https://www.netflix.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="twitch"  --icon="icons/icon-twitch.png" "https://www.twitch.tv" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="keep"  --icon="icons/icon-keep.png" "https://keep.google.com" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="discord" --icon="icons/icon-discord.png" "https://discordapp.com/channels/@me" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="slack" --icon="icons/icon-slack.png" "https://slack.com/" "$dest"
$nativefier --maximize --single-instance --user-agent="$useragent" --name="spotify" "https://open.spotify.com/" "$dest"
