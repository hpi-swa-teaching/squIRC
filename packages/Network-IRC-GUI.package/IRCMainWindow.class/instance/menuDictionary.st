menu
menuDictionary

	^Dictionary newFrom: {
		"Menu and submenu map."
		#menuIRC: 			->		'IRC'.
		#menuProfile: 		->		'Profile'.
		#menuChannel:		->		'Channel'.
		#menuHelp: 		->		'Help'.

		"Item map."
		#itemIRCNew 		->		'New'.
		#itemIRCClose 		->		'Close'.
		#itemIRCConnect 	->		[self connectButtonLabel].
		#itemIRCSettings 	->		'Settings'.

		#itemHelpShow 	->		'Help'.
		#itemHelpAbout 	->		'About'.

		"Menu grouping."
		#groupMain 		->		#(#menuIRC: #menuProfile: #menuChannel: #menuHelp:).
		#groupIRC 			->		#(#itemIRCNew #itemIRCClose #itemIRCConnect #itemIRCSettings).
		#groupHelp 		->		#(#itemHelpShow #itemHelpAbout).
	}