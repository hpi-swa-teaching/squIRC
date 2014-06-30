We are invoked because the user wants to:
	1) add a new profile
	2) edit an existing profile

When you want an add, send #openForAddWithOptions: to us.
When you want to edit, send #openDialogOn: to us.
In both cases we assume that you have hidden your window just before calling us.
Do not call our #openDialog method, it is private.

