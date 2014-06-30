mIRC colors
initializeTextColorMap
	"Be sure to reinitialize the color map if you make edits here."
	"IRCClientColors initializeTextColorMap"
	TextColorMap := Dictionary new.
	TextColorMap
		at: 0
		put: (TextColor color: Color white);
		
		at: 1
		put: (TextColor color: Color black);
		
		at: 2
		put: (TextColor color: Color blue darker);
		
		at: 3
		put: (TextColor color: Color green darker);
		
		at: 4
		put: (TextColor color: Color red darker);
		
		at: 5
		put: (TextColor color: Color brown);
		
		at: 6
		put: (TextColor color: Color magenta darker);
		
		at: 7
		put: (TextColor color: Color orange darker);
		
		at: 8
		put: (TextColor color: Color yellow);
		
		at: 9
		put: (TextColor color: Color lightGreen);
		
		at: 10
		put: (TextColor color: Color cyan darker);
		
		at: 11
		put: (TextColor color: Color cyan);
		
		at: 12
		put: (TextColor color: Color lightBlue);
		
		at: 13
		put: (TextColor color: Color magenta);
		
		at: 14
		put: (TextColor color: Color darkGray);
		
		at: 15
		put: (TextColor color: Color gray)