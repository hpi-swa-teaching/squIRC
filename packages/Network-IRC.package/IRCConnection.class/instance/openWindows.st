as yet unclassified
openWindows
	| success |
	success := self firstTimePromptsCheck.
	success
		ifTrue: [self openView; openDirectMessagesObserver]
		ifFalse: [self inform: 'Open could not continue.']