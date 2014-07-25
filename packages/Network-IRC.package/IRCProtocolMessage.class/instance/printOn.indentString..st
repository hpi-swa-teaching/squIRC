encoding
printOn: stream indentString: indent
	| argCount |
	prefix
		ifNotNil: [stream cr; nextPutAll: indent.
			stream nextPutAll: 'PREFIX: '.
			stream nextPut: $:.
			stream nextPutAll: prefix.
			stream space].
	stream cr; nextPutAll: indent; nextPutAll: 'COMMAND: '; nextPutAll: command asUppercase.
	stream space.
	arguments isEmpty
		ifFalse: ["print out all but the last argument"
			argCount := 0.
			stream cr; nextPutAll: indent; nextPutAll: 'ARGUMENTS:'.
			(arguments copyFrom: 1 to: arguments size - 1)
				do: [:arg | 
					argCount := argCount + 1.
					stream cr; nextPutAll: indent; nextPutAll: indent.
					stream nextPutAll: argCount printString , ': '.
					stream nextPutAll: arg.
					stream space].
			"print the last as a trailer, just to be safe"
			argCount := argCount + 1.
			stream cr; nextPutAll: indent; nextPutAll: indent.
			stream nextPutAll: argCount printString , ': '.
			stream nextPut: $:.
			stream nextPutAll: arguments last]