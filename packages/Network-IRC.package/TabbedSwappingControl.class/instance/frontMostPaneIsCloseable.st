public API
frontMostPaneIsCloseable
	"Answers if the front most pane is closeable. Note if the front most pane 
	is undefined we answer false."
	frontMost isNil
		ifFalse: [(frontMost hasProperty: #closeable)
				ifTrue: [^ frontMost valueOfProperty: #closeable]].
	^ false