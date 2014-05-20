public API
closeAllPanes
	"Close all the closeable tabs."
	tabs
		do: [:paneName | self closePaneNamed: paneName]
