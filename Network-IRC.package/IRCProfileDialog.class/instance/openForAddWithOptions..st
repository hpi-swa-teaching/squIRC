dialog creation
openForAddWithOptions: options 
	"Get a server first."
	editing := false.
	profile := IRCConnectionProfile default deepCopy.
	profile options: options.
	self serverButton