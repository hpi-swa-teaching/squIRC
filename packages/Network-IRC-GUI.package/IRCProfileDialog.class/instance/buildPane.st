dialog creation
buildPane
	
	^IRCGUIHelper listPaneFor: 	{ 	#buildProfileNamePane .
									#buildFullNamePane . 
									#buildNickPane . 
									#buildUserNamePane .
									#buildServerAddressPane .
									#buildActionButtons } 
					on: self.

