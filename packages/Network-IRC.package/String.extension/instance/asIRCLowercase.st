*network-IRC-Model
asIRCLowercase
	"Answer a String made up from the receiver whose characters are all 
	lowercase, where 'lowercase' is by IRC's definition"

	^self collect: [ :c | c asIRCLowercase ]