buttons-specs
connectButtonSpecification
	^ Dictionary new at: 'label' put: 'connect';
		 at: 'name' put: 'connect';
		 at: 'selector' put: #connectToggle;
		 at: 'status' put: #connected;
		 at: 'help' put: 'Connect/Disconnect IRC server';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself