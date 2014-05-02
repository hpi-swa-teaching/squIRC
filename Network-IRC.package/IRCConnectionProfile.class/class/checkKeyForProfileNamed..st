profiles
checkKeyForProfileNamed: aString 
	"Ensure that the key we are using is the same the profile name. Assume 
	that the profile name is the correct one if they differ."
	| badKeys profile |
	(self profiles keys includes: aString)
		ifFalse: [badKeys := Set new.
			self profiles keys
				do: [:ky | 
					profile := self profiles at: ky.
					profile name = aString
						ifTrue: [ky = profile name
								ifFalse: [self profiles at: aString put: profile copy.
									badKeys add: ky]]].
			badKeys
				do: [:badKey | self profiles removeKey: badKey]]