buttons
actionButtonOn: aModel label: label action: actionMsgIdentifier balloonText: balloonText name: aString

	^(PluggableButtonMorph 
			on: aModel
			getState: nil
			action: actionMsgIdentifier)
			label: label;
			color: self buttonColor;
			onColor: self buttonColor 
			offColor: self buttonColor;
			setBalloonText: balloonText;
			useRoundedCorners;
			name: aString;
			yourself