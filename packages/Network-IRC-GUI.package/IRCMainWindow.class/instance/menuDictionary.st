menu
menuDictionary

	^Dictionary newFrom: {
		"Menu and submenu map."
		#menuIRC: 			->		'IRC'.
		#itemProfile 		->		'Profile'.
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
		#groupMain 		->		#(#menuIRC: #menuChannel: #menuHelp:).
		#groupIRC 			->		#(#itemIRCNew #itemIRCClose #itemIRCConnect #itemProfile #itemIRCSettings).
		#groupHelp 		->		#(#itemHelpShow #itemHelpAbout).
	}