profiles-gui
buildActionButtons

	^IRCGUIHelper rowPaneFor:
							{	#buildNewButton .
								#buildEditButton .
								#buildDeleteButton .
								#buildSelectButton}
							on: self 