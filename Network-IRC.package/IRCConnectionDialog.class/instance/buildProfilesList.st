profiles
buildProfilesList
	| theList |
	theList := PluggableMultiColumnIRCListMorph
				on: self
				list: #profileDescriptions
				selected: #profilesIndex
				changeSelected: #profilesIndex:
				headerStrings: #('Profile' 'Nick' 'Server' ).
	theList color: Color white;
		 name: 'theProfilesList'.
	theList headerBackColor: Color paleTan muchLighter.
	^ theList