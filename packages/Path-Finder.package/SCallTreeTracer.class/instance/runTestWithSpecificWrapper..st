specific runs
runTestWithSpecificWrapper: aWrapper

	aWrapper install.
	[self runRootNode]
		ensure: [aWrapper uninstall.
			      ^ aWrapper].