tracing
runRootNodeWithContracts
	^ [[self runRootNode] runWithContracts: self project projectName]
		on: SContractViolation
		do: [:exception | 
			self callTreeModel currentNode violations add: exception.
			exception resume]