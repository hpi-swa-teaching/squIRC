action buttons
buildActionButtons
	
	^IRCGUIHelper rowPaneFor: 
							{ 	#buildOkayButton .
								#buildCancelButton } 
							on: self 