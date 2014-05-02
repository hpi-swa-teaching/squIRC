interface
addNameFilterControlTo: aPane 
	| morph |
	morph := IRCGUIHelper
				entryFieldRowFor: self
				tag: 'name:'
				backLabel: 'name filter'
				textGetter: #nameFilter
				textSetter: #nameFilter:
				color: Color transparent
				tagColumnWidth: 46
				tagPad: 20
				tagInset: 6.
	aPane addMorphBack: morph