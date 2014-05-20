stored graphics
convertSavedMorphFile: fileName 
	"Save the Rectangle morph, compress it in FileList and then copy the file 
	name (path) for this method. Copy the ASCII text into the source pane."
	| fileStream encoded |
	fileStream := FileStream oldFileNamed: fileName.
	encoded := Base64MimeConverter mimeEncode: fileStream.
	fileStream close.
	encoded contents openInWorkspaceWithTitle: 'Copy this to compressed method source pane.'