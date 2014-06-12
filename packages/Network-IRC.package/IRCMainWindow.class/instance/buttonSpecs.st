buttons
buttonSpecs
	^ OrderedCollection new add: self connectButtonSpecification;
		 add: self setupButtonSpecification;
		 add: self motdButtonSpecification;
		 add: self channelsButtonSpecification;
		 add: self privateMessageButtonSpecification;
		 add: self newConsoleButtonSpecification;
		 yourself