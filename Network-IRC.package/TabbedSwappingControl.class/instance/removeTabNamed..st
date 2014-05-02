pane operations
removeTabNamed: aString 
	| swapper btn buttons candidateMorphs |
	swapper := self findPaneNamed: 'swap'.
	swapper isNil
		ifTrue: [^ false].
	buttons := swapper submorphs
				select: [:m | m isKindOf: PluggableButtonIRCeMorph].
	candidateMorphs := buttons
				select: [:m | m label = aString].
	candidateMorphs isEmpty
		ifTrue: [^ false].
	candidateMorphs size > 1
		ifTrue: [^ false].
	btn := candidateMorphs first.
	tabs
		remove: aString
		ifAbsent: [^ false].
	btn delete.
	^ true