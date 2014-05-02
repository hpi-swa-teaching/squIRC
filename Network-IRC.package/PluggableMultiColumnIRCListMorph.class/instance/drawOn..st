as yet unclassified
drawOn: aCanvas 
	super drawOn: aCanvas.
	self drawHeaderBackgroundOn: aCanvas.
	self drawHeaderLinesOn: aCanvas.
	self drawHeaderStringsOn: aCanvas