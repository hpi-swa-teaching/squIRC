configuration
showConfigDenial: boolean 
	"boolean is true if we are connected."
	self myDependents isNil
		ifFalse: [
			boolean
				ifTrue: [configurationPane
						addMorph: denialPane
						fullFrame: (LayoutFrame
								fractions: (0 @ 0 corner: 1 @ 1)
								offsets: (0 @ 0 corner: 0 @ 0))]
				ifFalse: [denialPane isNil ifFalse: [denialPane delete]]]