profiles-gui
buildProfilesList
	| theList |
	theList := PluggableListMorph
				on: self
				list: #profileDescriptions
				selected: #profilesIndex
				changeSelected: #profilesIndex:.
	"theList color: Color white;
		 name: 'theProfilesList'.
	theList headerBackColor: Color paleTan muchLighter."
	^ theList