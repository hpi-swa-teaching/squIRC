menu
profileString

	model currentProfile name
		ifNil: [^ ' - There is no profile' ]
		ifNotNil: [^' - ', model currentProfile name].