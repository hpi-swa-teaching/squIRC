as yet unclassified
drawHeaderStringsOn: aCanvas 
	self listMorph isNil
		ifFalse: [self drawHeaderStringsUsingListMorphWidthsOn: aCanvas].
