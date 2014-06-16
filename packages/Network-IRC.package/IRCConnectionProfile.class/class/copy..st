instance creation
copy: anOtherProfile

	^(self new)
			name: anOtherProfile name;
			copyPropertiesFrom: anOtherProfile;
			yourself