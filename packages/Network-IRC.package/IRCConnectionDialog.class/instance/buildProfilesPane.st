profiles-gui
buildProfilesPane
	| aPane |
	aPane := AlignmentMorph newColumn beSticky; borderWidth: 0.
	aPane color: self profilesPaneBackgroundColor;
		 layoutPolicy: ProportionalLayout new.
	aPane
		addMorph: self buildProfileActionButtons
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (self horizPaneMargin @ self vertPaneMargin corner: self horizPaneMargin negated @ (self vertPaneMargin + self profileButtonHeight))).
	aPane
		addMorph: self buildProfilesList
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (self horizPaneMargin @ (self vertPaneMargin + self profileButtonHeight + self vertPaneMargin) corner: self horizPaneMargin negated @ self vertPaneMargin negated)).
	^ aPane