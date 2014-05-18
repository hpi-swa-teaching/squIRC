profile management
profileNameAt: anIndex
	"tries to find the name of the profile at anIndex"
	
	^self profileNamesSorted at: anIndex ifAbsent: [nil]