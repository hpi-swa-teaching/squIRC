interface
addActionButtonsToButtonRow: aRow 
	| btn getState btnLabel |
	self buttonSpecs
		do: [:spec | 
			btnLabel := self perform: spec first.
			getState := spec third.
			getState = #none
				ifTrue: [getState := nil].
			btn := IRCGUIHelper actionButtonOn: self label: btnLabel action: spec second balloonText: nil.
			Preferences alternativeWindowLook
				ifTrue: [btn borderWidth: 2;
						 borderColor: #raised].
			btn color: Color transparent;
				 useRoundedCorners;
				 vResizing: #spaceFill;
				 hResizing: #shrinkWrap;
				 onColor: Color transparent offColor: IRCClientColors channelListIdle.
			aRow addMorphBack: btn.
			btn setBalloonText: spec fourth].
	self setRefreshButton: aRow