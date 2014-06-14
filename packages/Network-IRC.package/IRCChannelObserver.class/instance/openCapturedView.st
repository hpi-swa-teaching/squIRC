as yet unclassified
openCapturedView
	"We do it inside the console window!"

	"open a view for interacting with this collector"

	| alignMorph paneName |
	paneName := channel name.
	alignMorph := (AlignmentMorph newColumn)
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				layoutInset: 0;
				borderWidth: 0;
				layoutPolicy: ProportionalLayout new.
	alignMorph color: Color white.
	self buildMorphIn: alignMorph.
	(connection gui swapper) 
		addPane: alignMorph
		named: paneName
		hidden: false
		closeable: true
		swapModel: self.
	self justOpened