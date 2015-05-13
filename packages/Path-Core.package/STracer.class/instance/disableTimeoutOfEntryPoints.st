helper
disableTimeoutOfEntryPoints
	self entryPoints do: [:each | each disableTimeout].