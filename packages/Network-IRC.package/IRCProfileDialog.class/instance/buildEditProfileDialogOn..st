dialog creation
buildEditProfileDialogOn: window 
	| alignMorph |
	
	alignMorph := IRCGUIHelper listPaneFor: 
												{ 	#buildFullNamePane . 
												   #buildNickPane . 
													#buildProfileNamePane .
													#buildServerAddressPane .
													#buildUserNamePane .
													#buildActionButtons } 
												from: self.
	window addMorph: alignMorph
				fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	alignMorph color: IRCGUIHelper dialogBackgroundColor.
