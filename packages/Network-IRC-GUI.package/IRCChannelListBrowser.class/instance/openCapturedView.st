interface
openCapturedView
	"We do it inside the console window!"
	| paneName alignMorph |
	paneName := self class tabbedPaneName.
	alignMorph := AlignmentMorph newColumn beSticky; borderWidth: 0; layoutPolicy: ProportionalLayout new.
	alignMorph color: Color paleTan.
	self buildMorphIn: alignMorph.
	(connection gui swapper) 
		addPane: alignMorph
		named: paneName
		hidden: false
		closeable: true
		swapModel: self