buttons-specs
channelsButtonSpecification
	^ Dictionary new at: 'label' put: 'channels';
		 at: 'name' put: 'channels';
		 at: 'selector' put: #openChannelList;
		 at: 'status' put: #none;
		 at: 'help' put: 'Open Channels List Window';
		 at: 'on' put: #none;
		 at: 'off' put: #none;
		 yourself