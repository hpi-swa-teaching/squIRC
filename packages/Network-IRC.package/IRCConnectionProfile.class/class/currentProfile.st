accessing
currentProfile
	"this is NO reference to a profile in the Profiles Collection but an independent Configuration "
	
	^ CurrentProfile ifNil: [CurrentProfile := self blank]