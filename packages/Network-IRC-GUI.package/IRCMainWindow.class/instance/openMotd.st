actionButtons
openMotd
	| paneName alignMorph textView updateButton buttonHeight |
	
	buttonHeight := 22.
	paneName := 'MOTD'.
	(self swapper tabs includes: paneName)
		ifTrue:[^nil].
	alignMorph := AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 2;
				 layoutPolicy: ProportionalLayout new.
	textView := PluggableTextMorph
				on: model
				text: #motd
				accept: nil.
	alignMorph
		addMorph: textView
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ buttonHeight negated)).
	updateButton := PluggableButtonMorph
				on: model
				getState: nil
				action: #requestMotd.
	updateButton hResizing: #spaceFill;
		 vResizing: #spaceFill;
		 label: 'update'.
	alignMorph
		addMorph: updateButton
		fullFrame: (LayoutFrame
				fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ buttonHeight negated corner: 0 @ 0)).
	alignMorph color: Color white.
	(self swapper) 
		addPane: alignMorph
		named: paneName
		hidden: false
		closeable: true
		swapModel: model.
	motdPane := alignMorph