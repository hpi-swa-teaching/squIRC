colors
userNameColorFromHash: aString
	"generates a likely unique color for a nick from the hash of its string"
	| color hash hue saturation value |
	
	hash := aString hash.
	hue := (hash \\ 36) * 10.
	saturation := ((hash \\ 5) * 5 + 75) / 100.0.
	value := ((hash \\ 10) * 5 + 25) / 100.0.
	color := Color h: hue s: saturation v: value.
	
	^ color