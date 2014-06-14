layout helper
rowContainer

	^(AlignmentMorph newRow)
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 color: self dialogBackgroundColor;
				 layoutPolicy: ProportionalLayout new.