private
initialize: orientation 
	"private"
	super initialize.
	self layoutInset: 0@0;
		 cellInset: 2;
		 borderWidth: 0;
		 borderColor: Color transparent;
		 layoutPolicy: ProportionalLayout new.
	tabs _ Set new.
	self orientation: orientation.
	self addTabControlPane