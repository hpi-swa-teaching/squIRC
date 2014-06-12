configuration
buildConfigurationPane
	configurationPane := AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 layoutPolicy: ProportionalLayout new.
	self addConfigurationControlsTo: configurationPane.
	self buildConfigurationDenialPane.
	self connectionStateChanged.
	^configurationPane