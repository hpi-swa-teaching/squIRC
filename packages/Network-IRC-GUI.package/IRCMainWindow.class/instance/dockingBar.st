initialization
dockingBar

	^dockingBar ifNil: [
		dockingBar := DockingBarMorph new adhereToTop.
		dockingBar addItem: self ircMenu.
		dockingBar addItem: self profileMenu.
		dockingBar addItem: self channelMenu.
		dockingBar addItem: self helpMenu.
	]