actionButtons
buildActionButtons
	
	^IRCGUIHelper rowPaneFor: 
						{	#buildConnectButton .
							#buildSetupButton .
							#buildMOTDButton .
							#buildChannelsButton .
							#buildPrvMsgButton .
							#buildConsoleButton }
						on: self.