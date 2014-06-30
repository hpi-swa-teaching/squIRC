as yet unclassified
filterTopics: aString 
	| model |
	model := self new.
	model topicFilter: aString.
	^ model