instance creation
openWindowOn: aModel

	^(self labelled: self baseWindowTitle)
		model: aModel;
		buildMorphicWindow;
		openInWorld;
		yourself