profiles-gui
buildActionButtons

	^IRCGUIHelper rowPaneFor:
							{	#buildNewButton .
								#buildEditButton .
								#buildDeleteButton .
								#buildSelectButton .
								#buildSaveButton}
							on: self 