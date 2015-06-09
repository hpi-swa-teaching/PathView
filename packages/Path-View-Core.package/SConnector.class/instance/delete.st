submorphs-add/remove
delete
	
	label ifNotNil: [ label delete ].
	self closeToolbar.
	super delete.