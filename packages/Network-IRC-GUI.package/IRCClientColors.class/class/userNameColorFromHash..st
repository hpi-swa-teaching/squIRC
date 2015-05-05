colors
userNameColorFromHash: aString
	"generates a likely unique color for a nick from the hash of its string"
	| color hash hue saturation value |
	
	hash := aString hash.
	hue := (hash \\ self numberOfUserColors / self numberOfUserColors ) * 360.
	
	saturation := (hash \\ self numberOfUserColorSaturations / self numberOfUserColorSaturations) * 
		(self maxUserColorSaturation - self minUserColorSaturation)  + self minUserColorSaturation.
		
	value := (hash \\ self numberOfUserColorValues / self numberOfUserColorValues) * 
		(self maxUserColorValue - self minUserColorValue)  + self minUserColorValue.
		
	color := Color h: hue s: saturation v: value.
	
	^ color