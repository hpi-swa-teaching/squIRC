initialization
dockingBar
	| dockingBar |

	dockingBar := DockingBarMorph new.
	self buildMenu: #groupMain at: dockingBar.
	^dockingBar adhereToTop.