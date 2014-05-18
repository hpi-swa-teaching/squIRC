current profile
loadProfileNamed: aName

	(self profiles detect: [:candidate | candidate equalsName: aName])
					ifNotNilDo: [:profile | self loadProfile: profile]
					