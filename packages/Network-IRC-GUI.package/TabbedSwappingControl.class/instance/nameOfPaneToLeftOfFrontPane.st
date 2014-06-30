pane operations
nameOfPaneToLeftOfFrontPane
	| indexOfFrontPane indexOfLeftPane targetPane targetPaneName subs |
	frontMost isNil
		ifTrue: [^ nil].
	swapper isNil
		ifTrue: [^ nil].
	subs _ swapper submorphs.
	subs isSequenceable
		ifFalse: [^ nil].
	indexOfFrontPane _ (subs collect: [:each | each label]) indexOf: frontMost externalName.
	indexOfFrontPane <= 1
		ifTrue: [^ nil].
	indexOfLeftPane _ indexOfFrontPane - 1.
	targetPane _ subs at: indexOfLeftPane.
	targetPaneName _ targetPane label.
	(targetPaneName = 'console' or: [targetPaneName = 'private messages'] or: [targetPaneName = 'movers']) ifTrue: [^nil].
	^ targetPaneName