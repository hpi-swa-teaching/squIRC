configuration
denialTrueTypeMorph
	| ttMorph |
	ttMorph _ TTSampleStringMorph font: TTFontDescription default.
	ttMorph
		string: 'Connected';
		color: (Color red alpha: 0.3);
		borderColor: Color transparent.
	^ ttMorph