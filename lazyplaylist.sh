#!/bin/bash

set -e
shopt -s expand_aliases

alias yt3='yt-dlp --extract-audio --audio-format mp3'

export playlist=(
	"https://www.youtube.com/watch?v=VGP6JP_hAPM" # better days
	"https://www.youtube.com/watch?v=lW9ep22YmlM" # royalty
	"https://www.youtube.com/watch?v=B7Ck7V02Wic" # C418 aria math cinematic remix
	"https://www.youtube.com/watch?v=FsK-nJj3nMM" # İslami Rap - Hayat Boş Bir Umuttur
	"https://www.youtube.com/watch?v=4jM2iTUfAns" # Hidra - Ölüme İnat
	"https://www.youtube.com/watch?v=7uxEA0mjQO0" # Call Me Revenge
	"https://www.youtube.com/watch?v=AnMhdn0wJ4I" # Nevada
	"https://www.youtube.com/watch?v=B7xai5u_tnk" # TheFatRat monodoy
	"https://www.youtube.com/watch?v=-CnpJUERy58" # Code Lyoko - Un Monde Sans Danger
	"https://www.youtube.com/watch?v=-6hxH80TCp8" # Riders On The Storm
	"https://www.youtube.com/watch?v=ww2nAj6c3cQ" # Contra - Çivi
)

if [[ ! -d "${HOME}/Music/lazypwny" ]] ; then
	mkdir -p "${HOME}/Music/lazypwny"
fi

(
	cd "${HOME}/Music/lazypwny"
	for music in "${playlist[@]}" ; do
		yt3 "${music}"
	done
)
