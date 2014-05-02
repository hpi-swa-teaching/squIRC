stored graphics
connectedFullSizeMorph
	"IRCMainWindow connectedFullSizeMorph openInHand"
	| encoded zippedString data rwStream |
	encoded := self connectedMorphCompressedEncoded.
	zippedString := Base64MimeConverter mimeDecode: encoded as: String.
	data := zippedString unzipped.
	rwStream := RWBinaryOrTextStream with: data.
	rwStream reset; fileInAnnouncing: ''.
	^ SmartRefStream scannedObject