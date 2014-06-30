encoding
asString
	"encode in the format used for transferral over the network"
	^ String
		streamContents: [:stream | 
			prefix
				ifNotNil: [stream nextPut: $:.
					stream nextPutAll: prefix.
					stream space].
			stream nextPutAll: command asUppercase.
			stream space.
			arguments isEmpty
				ifFalse: ["print out all but the last argument"
					(arguments copyFrom: 1 to: arguments size - 1)
						do: [:arg | 
							stream nextPutAll: arg.
							stream space].
					"print the last as a trailer, just to be safe"
					stream nextPut: $:.
					stream nextPutAll: arguments last].
			stream nextPut: Character cr.
			stream nextPut: Character lf]