#!/usr/bin/fish

function nativefier-make-app
	APPPATH=$argv[1];
	NAME=$argv[2];
	CATEGORIES=$argv[3]
	COMMENT=$argv[4];
	echo "[Desktop Entry]
	Name=$NAME
	Comment=$COMMENT
	Exec=$APPPATH/$NAME %U
	Terminal=false
	Type=Application
	Icon=$APPPATH/resources/app/icon.png
	Categories=$CATEGORIES;" > "~/.local/share/applications/menulibre-$NAME.desktop"
end	

function webtopdf
    chromium-browser --headless --disable-gpu --print-to-pdf=$argv[2] $argv[1]
end

# gets the weather for a certain city and outputs it to the console
function weather 
	if test $argv[1]
		set CITY $argv[1]
    else
        set CITY "barcelona"
    end
	curl http://wttr.in/$CITY;
end

function fixbt
    pulseaudio -k 
    pulseaudio --start
    systemctl restart bluetooth
end
