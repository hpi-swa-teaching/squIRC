dialog creation
buildPaneContent
	| alignMorph |
	
	alignMorph := IRCGUIHelper listPaneFor: 
												{ 	#buildProfileNamePane .
													#buildFullNamePane . 
													#buildNickPane . 
													#buildUserNamePane .
													#buildServerAddressPane .
													#buildActionButtons } 
												on: self.
	^alignMorph
