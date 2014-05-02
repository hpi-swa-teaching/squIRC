as yet unclassified
prepareNickAsRequired: aTextOrString 
	"We answer a Text"
	| nickText pad |
	nickText _ aTextOrString asText.
	nickText size < self widestNick
		ifTrue: [pad _ String new: (widestNick - nickText size) withAll: Character space.
			nickText _ (pad , nickText) asText].
	nickText
		addAttribute: (TextFontReference toFont: (TextStyle named: #DefaultFixedTextStyle) defaultFont).
	^ nickText