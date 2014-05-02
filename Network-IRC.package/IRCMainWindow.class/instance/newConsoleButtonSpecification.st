buttons-specs
newConsoleButtonSpecification
	^ Dictionary new at: 'label' put: 'new console';
		 at: 'name' put: 'newConsole';
		 at: 'selector' put: #newConsole;
		 at: 'status' put: #none;
		 at: 'help' put: 'Open up a new IRC console using same options';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself