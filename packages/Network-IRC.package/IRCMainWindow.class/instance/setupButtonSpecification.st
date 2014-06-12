buttons-specs
setupButtonSpecification
	^ Dictionary new at: 'label' put: 'setup';
		 at: 'name' put: 'setup';
		 at: 'selector' put: #openConnectionDialogue;
		 at: 'status' put: #none;
		 at: 'help' put: 'Open up connection setup dialog';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself