interface
addNameFilterControlTo: aPane 
	| morph |
	morph := IRCGUIHelper
				entryFieldRowFor: self
				tag: 'name:'
				backLabel: 'name filter'
				textGetter: #nameFilter
				textSetter: #nameFilter:
				tagColumnWidth: 46.
	aPane addMorphBack: morph