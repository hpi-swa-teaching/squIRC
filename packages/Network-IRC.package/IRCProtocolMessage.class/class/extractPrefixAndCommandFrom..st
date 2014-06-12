instance creation
extractPrefixAndCommandFrom: aString 
	| stream command prefix arguments trailer |
	stream _ ReadStream on: aString.
	command _ stream upTo: $ .
	command first = $: ifTrue: [
		prefix _ command copyFrom: 2 to: command size.
		command _ stream upTo: $ ].
	arguments _ stream upTo: $:.
	stream atEnd ifFalse: [trailer _ stream upToEnd].
	^ Array
		with: prefix
		with: command
		with: arguments
		with: trailer