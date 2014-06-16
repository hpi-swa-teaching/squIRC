mover buttons
buildLeftButton

	^IRCGUIHelper
			actionButtonOn: self
			label: '<'
			action: #moveTabLeft 
			balloonText: 'Moves the selected tab to the left'