pane operations
moveTabRight
	| paneName swapper coll btn btns |
	frontMost isNil
		ifTrue: [^ nil].
	paneName := frontMost externalName.
	swapper := self findPaneNamed: 'swap'.
	swapper isNil
		ifTrue: [^ nil].
	btns := swapper submorphs
				select: [:m | m isKindOf: PluggableButtonIRCeMorph].
	coll := btns
				select: [:m | m label asString = paneName].
	coll isEmpty
		ifTrue: [^ nil].
	btn := coll first.
	swapper incrementIndexPositionOfSubmorph: btn