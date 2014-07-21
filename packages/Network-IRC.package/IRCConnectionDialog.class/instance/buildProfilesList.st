profiles-gui
buildProfilesList

	^(PluggableListMorph
				on: self
				list: #profileDescriptions
				selected: #profilesIndex
				changeSelected: #profilesIndex:)
				name: 'LstProfiles'