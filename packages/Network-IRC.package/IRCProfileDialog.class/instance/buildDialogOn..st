dialog creation
buildDialogOn: window
	| alignMorph |
	
	alignMorph := IRCGUIHelper listPaneFor: 
												{ 	#buildProfileNamePane .
													#buildFullNamePane . 
												   #buildNickPane . 
													#buildUserNamePane .
													#buildServerAddressPane .
													#buildActionButtons } 
												on: self.

	window addMorph: alignMorph
				fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))
