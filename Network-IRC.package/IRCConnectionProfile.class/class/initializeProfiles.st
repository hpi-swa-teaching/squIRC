profiles
initializeProfiles
	"IRCConnectionProfile initializeProfiles"
	self profiles: Dictionary new.
	"Always ensure the default profile is here."
	self updateDefaultProfile