buttons-specs
motdButtonSpecification
	^ Dictionary new at: 'label' put: 'MOTD';
		 at: 'name' put: 'motd';
		 at: 'selector' put: #openMotd;
		 at: 'status' put: #none;
		 at: 'help' put: 'Read Message Of The Day';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself