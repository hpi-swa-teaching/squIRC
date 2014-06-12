private
moverButtonSpecs
	"button label, button name, selector, status, help text, on color, off color"
	^{
		{'x'. 'closeTab'. 		#closeFrontPane. 	#none. 	'Closes the selected tab'. 				#none. #none}.
		{'>'. 'moveTabRight'.	#moveTabRight. 	#none. 	'Moves the selected tab to the right'.	#none. #none}.
		{'<'. 'moveTabLeft'.	#moveTabLeft. 		#none.	'Moves the selected tab to the left'. 	#none. #none}
		}