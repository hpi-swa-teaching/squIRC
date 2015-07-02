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
		#itemIRCProfile  	->		'Profile'.

		#itemIRCMotd  		->		'Motd'.
		#itemIRCPrvMsg   	->		'PrvMsg'.

		#itemIRCChannel    ->      	'Channels'.

		#itemHelpShow 	->		'Help'.
		#itemHelpAbout 	->		'About'.

		"Menu grouping."
		#groupMain 		->		#(#menuIRC: #menuChannel: #menuHelp:).
		#groupIRC 			->		#(#itemIRCNew #itemIRCClose #itemIRCMotd #itemIRCPrvMsg #itemIRCConnect #itemIRCProfile #itemIRCSettings).
		#groupChannel		->		#(#itemIRCChannel).
		#groupHelp 		->		#(#itemHelpShow #itemHelpAbout).
	}