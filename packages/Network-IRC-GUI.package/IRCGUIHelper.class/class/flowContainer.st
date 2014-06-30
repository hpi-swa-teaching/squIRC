layout helper
flowContainer

	^(AlignmentMorph newRow)
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 color: self dialogBackgroundColor;
				 layoutPolicy: TableLayout new.