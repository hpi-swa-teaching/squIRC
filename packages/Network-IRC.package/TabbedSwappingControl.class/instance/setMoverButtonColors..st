public API
setMoverButtonColors: aColor 
	| bName btn |
	self moverButtonSpecs do: [:spec |
		bName _ spec second.
		btn _ self findPaneNamed: bName.
		btn isNil ifFalse: [btn color: aColor]]