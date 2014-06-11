mIRC lines
isValidMIRCLine: aString

	^aString matchesRegex: 'n[0-9]+=.*SERVER\:.*\:.*GROUP\:.*'