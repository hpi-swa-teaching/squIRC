buttons
actionButtonOn: aModel label: label action: actionMsgIdentifier balloonText: balloonText

	^(PluggableButtonMorph 
			on: aModel
			getState: nil
			action: actionMsgIdentifier)
			label: label;
			color: self actionButtonColor;
			onColor: self actionButtonColor 
			offColor: self actionButtonColor;
			setBalloonText: balloonText;
			useRoundedCorners;
			yourself