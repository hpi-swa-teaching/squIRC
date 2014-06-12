API
option: key 
	"Get the option value.  If it's missing it's false."
	^ self savedOptions
		at: key
		ifAbsent: [false]