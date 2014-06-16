mover buttons
buildRightButton

	^IRCGUIHelper
			actionButtonOn: self
			label: '>'
			action: #moveTabRight 
			balloonText: 'Moves the selected tab to the right'