interface
addTopicFilterControlTo: aPane 
	| morph |
	morph := IRCGUIHelper
				entryFieldRowFor: self
				tag: 'topic:'
				backLabel: 'topic filter'
				textGetter: #topicFilter
				textSetter: #topicFilter:
				color: Color transparent
				tagColumnWidth: 46
				tagPad: 20
				tagInset: 6.
	aPane addMorphBack: morph