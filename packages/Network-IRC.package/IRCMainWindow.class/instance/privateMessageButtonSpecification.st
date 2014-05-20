buttons-specs
privateMessageButtonSpecification
	^ Dictionary new at: 'label' put: 'pvt msg';
		 at: 'name' put: 'pvt';
		 at: 'selector' put: #talkTo;
		 at: 'status' put: #none;
		 at: 'help' put: 'Private Message for Individual';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself