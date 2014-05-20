utility
features
	"IRCConnection features"
	"Puts the window in the top right corner and resizes it."
	| wkspace wkWindow wkWinExt orgPt |
	wkWinExt := 650 @ 430.
	wkspace := Workspace new contents: self featuresString.
	wkWindow := wkspace embeddedInMorphicWindowLabeled: 'IRCe Features'.
	wkWindow extent: wkWinExt.
	orgPt := self currentWorld bounds topRight - (wkWinExt x @ 0).
	wkWindow position: orgPt + (-80 @ 80).
	wkWindow openAsIsIn: self currentWorld.
	wkWindow
		setWindowColor: (Color
				r: 0.997
				g: 0.975
				b: 0.957)