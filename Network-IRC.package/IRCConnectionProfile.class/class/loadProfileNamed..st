current profile
loadProfileNamed: aName

	(self profiles detect: [:candidate | candidate equalsName: aName] ifNone: [nil])
					ifNotNilDo: [:profile | self loadProfile: profile]
					