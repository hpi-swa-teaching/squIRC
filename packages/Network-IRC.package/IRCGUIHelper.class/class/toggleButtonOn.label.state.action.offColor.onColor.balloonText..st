buttons
toggleButtonOn: aModel label: label state: aStateMsgIdentifier action: actionMsgIdentifier offColor: offColor onColor: onColor balloonText: balloonText

	^(PluggableButtonMorph 
			on: aModel
			getState: aStateMsgIdentifier
			action: actionMsgIdentifier)
			label: label;
			color: offColor;
			onColor: onColor 
			offColor: offColor;
			setBalloonText: balloonText;
			useRoundedCorners;
			yourself