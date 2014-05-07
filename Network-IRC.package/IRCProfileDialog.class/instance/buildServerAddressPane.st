property-serveraddress
buildServerAddressPane
	| alignPane btn offset |
	offset := 90.
	alignPane := self
				entryPane: 'Server Address'
				set: #serverAddressString:
				get: #serverAddressString
				canEdit: false
				rightEdgeOffset: offset.
	btn := PluggableButtonMorph
				on: self
				getState: nil
				action: #serverButton.
	Preferences alternativeWindowLook
		ifTrue: [btn borderWidth: 2;
				 borderColor: #raised].
	btn label: 'Choose Server'.
	btn useRoundedCorners.
	btn color: Color veryVeryLightGray.
	btn onColor: Color white offColor: Color veryVeryLightGray.
	btn setBalloonText: 'Opens up a server list dialog.'.
	alignPane addMorph: btn
		fullFrame: (LayoutFrame
				fractions: (1 @ 0 corner: 1 @ 1)
				offsets: (offset negated @ 0 corner: 0 @ 0)).
	^ alignPane