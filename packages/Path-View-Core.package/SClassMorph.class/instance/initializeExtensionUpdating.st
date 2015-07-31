initialization
initializeExtensionUpdating

	self 
		connect: self
		signal: #emitChangedSignal
		toSelector: #extendDiagram