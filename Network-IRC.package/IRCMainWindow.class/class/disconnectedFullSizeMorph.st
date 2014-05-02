stored graphics
disconnectedFullSizeMorph
	"IRCMainWindow disconnectedFullSizeMorph openInHand"
	| encoded zippedString data rwStream |
	encoded := self disconnectedMorphCompressedEncoded.
	zippedString := Base64MimeConverter mimeDecode: encoded as: String.
	data := zippedString unzipped.
	rwStream := RWBinaryOrTextStream with: data.
	rwStream reset; fileInAnnouncing: ''.
	^ SmartRefStream scannedObject