as yet unclassified
calculateWidestNick
	"Select an arbitrary minimum."
	widestNick == nil ifTrue: [widestNick _ 7].
	self channelUsers do: [:each |
		widestNick _ widestNick max: each size].