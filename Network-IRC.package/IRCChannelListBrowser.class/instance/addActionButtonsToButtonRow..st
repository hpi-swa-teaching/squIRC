interface
addActionButtonsToButtonRow: aRow 
	| btn getState btnLabel |
	self buttonSpecs
		do: [:spec | 
			btnLabel := self perform: spec first.
			getState := spec third.
			getState = #none
				ifTrue: [getState := nil].
			btn := self actionButtonClass
						on: self
						getState: getState
						action: spec second.
			Preferences alternativeWindowLook
				ifTrue: [btn borderWidth: 2;
						 borderColor: #raised].
			btn color: Color transparent;
				 label: btnLabel;
				 useRoundedCorners;
				 vResizing: #spaceFill;
				 hResizing: #shrinkWrap;
				 onColor: Color transparent offColor: IRCClientColors channelListIdle.
			aRow addMorphBack: btn.
			btn setBalloonText: spec fourth].
	self setRefreshButton: aRow