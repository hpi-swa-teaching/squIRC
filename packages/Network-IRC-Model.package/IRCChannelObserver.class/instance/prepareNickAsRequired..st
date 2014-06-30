as yet unclassified
prepareNickAsRequired: aTextOrString 
	"We answer a Text"
	| nickText pad nickString |
	
	nickString := aTextOrString asString.
	nickText := aTextOrString asText.
	nickText size < self widestNick
		ifTrue: [pad := String new: (self widestNick - nickText size) withAll: Character space.
			nickText := (pad , nickText) asText].
	"old: nickText addAttribute: (TextFontReference toFont: (TextStyle named: #DefaultFixedTextStyle) defaultFont)."
	nickText addAttribute: (TextFontReference toFont: ((TextStyle named: #DefaultTextStyle) fontOfSize: 18)).
	(nickString sameAs: self serverName) ifFalse: 
		[nickText addAttribute: (TextColor color: (IRCClientColors userNameColorFromHash: aTextOrString))].
	^ nickText