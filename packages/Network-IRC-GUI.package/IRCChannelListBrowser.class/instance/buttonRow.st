interface
buttonRow
	| aRow |
	aRow := AlignmentMorph newRow beSticky.
	aRow color: Color paleTan.
	aRow clipSubmorphs: true.
	aRow layoutInset: 5 @ 3;
		 borderWidth: 0;
		 cellInset: 6.
	^ aRow