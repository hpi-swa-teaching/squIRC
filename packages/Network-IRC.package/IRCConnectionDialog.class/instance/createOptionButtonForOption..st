options
createOptionButtonForOption: aSymbol 
	| button wrapper str |
	wrapper := AlignmentMorph newRow height: self optionRowHeight.
	wrapper color: Color white.
	wrapper hResizing: #spaceFill;
		 vResizing: #shrinkWrap.
	button := UpdatingThreePhaseIRCButtonMorph checkBox.
	wrapper addTransparentSpacerOfSize: 2 @ 0.
	wrapper addMorphBack: button.
	button target: IRCOptionsManagement;
		 actionSelector: #toggleOption:;
		
		arguments: (Array with: aSymbol);
		 getSelector: #option:;
		 getArgument: aSymbol.
	button setBalloonText: (IRCOptionsManagement helpForOption: aSymbol).
	wrapper addTransparentSpacerOfSize: 2 @ 0.
	str := StringMorph
				contents: (IRCOptionsManagement descriptionForOption: aSymbol)
				font: (StrikeFont familyName: 'NewYork' size: 12).
	wrapper addMorphBack: str.
	^ wrapper