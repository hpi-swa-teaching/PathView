tracing
removeWrappers: aWrapperCollection
	
	aWrapperCollection do: [:each | each uninstall].