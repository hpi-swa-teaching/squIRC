buttons
toggleButtonOn: aModel label: aLabelMsg state: aStateMsg action: anActionMsg offColor: offColor onColor: onColor balloonText: balloonText name: aString

	^(PluggableButtonMorph 
			on: aModel
			getState: aStateMsg
			action: anActionMsg
			label: aLabelMsg)
			color: ((aModel perform: aStateMsg) 
							ifTrue: [onColor] 
							ifFalse: [offColor]);
			onColor: onColor 
			offColor: offColor;
			setBalloonText: balloonText;
			useRoundedCorners;
			name: aString;
			yourself