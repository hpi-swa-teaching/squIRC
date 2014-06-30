as yet unclassified
filterNames: nameString andTopics: topicsString 
	| model |
	model := self new.
	model nameFilter: nameString.
	model topicFilter: topicsString.
	^ model