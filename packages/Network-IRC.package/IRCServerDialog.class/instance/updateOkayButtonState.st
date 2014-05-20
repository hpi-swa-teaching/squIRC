as yet unclassified
updateOkayButtonState
	| btn |
	btn _ self findMorphNamed: 'okayButton'.
	btn isNil
		ifFalse: [
	self validServerSelection
		ifTrue: [btn offColor: Color transparent;
				 setBalloonText: self okayButtonActiveHelpText]
		ifFalse: [btn offColor: Color veryVeryLightGray;
				 setBalloonText: self okayButtonInactiveHelpText]]
