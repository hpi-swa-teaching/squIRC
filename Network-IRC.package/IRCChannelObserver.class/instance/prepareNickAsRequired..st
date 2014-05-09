as yet unclassified
prepareNickAsRequired: aTextOrString 
	"We answer a Text"
	| nickText pad |
	
	nickText := aTextOrString asText.
	nickText size < self widestNick
		ifTrue: [pad := String new: (widestNick - nickText size) withAll: Character space.
			nickText := (pad , nickText) asText].
	"nickText
		addAttribute: (TextFontReference toFont: (TextStyle named: #DefaultFixedTextStyle) defaultFont)."
	nickText
		addAttribute: (TextFontReference toFont: ((TextStyle named: #DefaultTextStyle) fontOfSize: 18)).
	nickText addAttribute: (TextColor color: (IRCClientColors userNameColorFromHash: aTextOrString)).
	^ nickText