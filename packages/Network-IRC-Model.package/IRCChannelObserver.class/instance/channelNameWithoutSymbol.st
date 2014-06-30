as yet unclassified
channelNameWithoutSymbol
	| string |
	string _ self channelName.
	string first = $# ifTrue: [string _ string copyFrom: 2 to: string size].
	^string
