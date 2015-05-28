actionButtons
buildActionButtons
	
	^IRCGUIHelper rowPaneFor: 
						{	#buildMOTDButton .
							#buildChannelsButton .
							#buildPrvMsgButton }
						on: self.