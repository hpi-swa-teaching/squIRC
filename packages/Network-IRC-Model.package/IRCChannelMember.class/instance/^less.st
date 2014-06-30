as yet unclassified
< anIRCChannelMember 
	"Priority is related to operators first, then voiced, then by name."
	self isOperator
		ifTrue: [anIRCChannelMember isOperator
				ifTrue: [^ self nick asIRCLowercase < anIRCChannelMember nick asIRCLowercase]
				ifFalse: [^ true]].
	anIRCChannelMember isOperator
		ifTrue: [^ false].
	self hasVoice
		ifTrue: [anIRCChannelMember hasVoice
				ifTrue: [^ self nick asIRCLowercase < anIRCChannelMember nick asIRCLowercase]
				ifFalse: [^ true]].
	anIRCChannelMember hasVoice
		ifTrue: [^ false].
	^ self nick asIRCLowercase < anIRCChannelMember nick asIRCLowercase