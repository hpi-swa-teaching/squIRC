panel building
addUsersListTo: win fractions: fractions offsets: offsets 
	| listView alignMorph statusHeight |
	listView := PluggableIRCHighlightingListMorph
				on: self
				list: #channelUsersFormatted
				selected: #selectedUser
				changeSelected: #selectedUser:
				menu: #userListMenu:.
	listView color: IRCClientColors userListPane.
	status := TextMorph new.
	status contents: self topicStatusPrefix;
		 lock.
	alignMorph := AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 color: IRCClientColors usersPopulationPaneBackground;
				 layoutPolicy: ProportionalLayout new.
	statusHeight := 24.
	alignMorph
		addMorph: status
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (6 @ 2 corner: 0 @ statusHeight));
		
		addMorph: listView
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ statusHeight corner: 0 @ 0)).
	win
		addMorph: alignMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	alignMorph fillWithRamp: connection gui paneColorRamp oriented: 16 @ 32