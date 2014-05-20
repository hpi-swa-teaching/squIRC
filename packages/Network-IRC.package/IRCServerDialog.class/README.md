Use #openDialog to open an instance of ourselves for selection from the user.
The user will either
	1) close the window (treated like a cancel)
	2) press cancel
	3) press okay

If window closed via close button or user selected cancel, and if there is a parentDialog defined, we send the #noServerSelected to that parentDialog.

If the window closed by the okay button and if there is a parent dialog defined, we send #useValuesFromServer:port: to that parent dialog.

In all cases our window is closed when we leave here.