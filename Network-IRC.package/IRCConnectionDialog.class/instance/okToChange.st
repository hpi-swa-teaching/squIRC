as yet unclassified
okToChange
	(self topView submorphs select: [:m | m isKindOf: PluggableTextMorph]) do: [:textMorph |
		textMorph hasUnacceptedEdits ifTrue: [^false]].
	^true