profiles
addDefaultProfile
	"Do NOT overwrite values already defined."
	(self profiles includesKey: self defaultProfileName)
		ifFalse: [self updateDefaultProfile]