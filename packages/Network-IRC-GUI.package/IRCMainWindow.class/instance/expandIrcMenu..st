menu
expandIrcMenu: menu

	menu addItem: [ :item |
			item
				contents: 'New';
				target: self;
				selector: #newConsole ].

	menu addItem: [ :item |
			item
				contents: 'Close';
				target: self;
				selector: #delete ].

	menu addItem: [ :item |
			item
				contents: self connectButtonLabel;
				target: self;
				selector: #connectToggle ].

	menu addItem: [ :item |
			item
				contents: 'Options';
				target: self;
				selector: #openSetupDialog ].