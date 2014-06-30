as yet unclassified
drawHeaderLinesOn: aCanvas 
	self listMorph isNil
		ifFalse: [self drawHeaderLinesUsingListMorphWidthsOn: aCanvas]