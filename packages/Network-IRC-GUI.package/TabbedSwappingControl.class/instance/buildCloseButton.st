mover buttons
buildCloseButton

	^IRCGUIHelper
			actionButtonOn: self
			label: 'x'
			action: #closeFrontPane 
			balloonText: 'Closes the selected tab'