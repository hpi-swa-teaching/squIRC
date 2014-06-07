instance creation
copy: anOtherProfile name: aName

	^(self new)
			name: aName;
			copyPropertiesFrom: anOtherProfile;
			yourself