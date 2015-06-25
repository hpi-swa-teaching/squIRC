dialog creation
openDialogLabeled: aString

	mainWin ifNotNil: [
		mainWin swapper
			addPane: self buildPane
			named: aString
			hidden: false
			closeable: true
			swapModel: self].
	canceled := false.
