as yet unclassified
unInstall: breakMethod 

	self installedNodes removeKey: breakMethod.
	super unInstall: breakMethod.