private
orientation: aSymbol 
	"private"

	tabQuadrant _ (#(#top #bottom #left #right ) includes: aSymbol)
				ifTrue: [aSymbol]
				ifFalse: [#top]