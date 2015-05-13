installation
uninstallChildNodeWrappers
	self childNodeWrappers
		do: [:each | each uninstall]