interface
addTopicFilterControlTo: aPane 
	| morph |
	morph := IRCGUIHelper
				entryFieldRowFor: self
				tag: 'topic:'
				backLabel: 'topic filter'
				textGetter: #topicFilter
				textSetter: #topicFilter:
				tagColumnWidth: 46.
	aPane addMorphBack: morph