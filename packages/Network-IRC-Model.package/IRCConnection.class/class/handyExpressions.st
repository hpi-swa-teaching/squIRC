utility
handyExpressions
	"IRCConnection handyExpressions"
	"Puts the window in the top right corner and resizes it."
	| wkspace wkWindow wkWinExt orgPt |
	wkWinExt := 408 @ 300.
	wkspace := Workspace new contents: self handyExpressionsString.
	wkWindow := wkspace embeddedInMorphicWindowLabeled: 'Handy IRC Development Expressions'.
	wkWindow extent: wkWinExt.
	orgPt := self currentWorld bounds topRight - (wkWinExt x @ 0).
	wkWindow position: orgPt + (-4 @ 2).
	wkWindow openAsIsIn: self currentWorld.
	wkWindow
		setWindowColor: (Color
				r: 0.997
				g: 0.975
				b: 0.957)