as yet unclassified
updateTextFromLines
	| stream |
	stream _ TextStream on: '' asText.
	self
		do: [:each | stream nextPutAll: each].
	self text: stream contents.
