*Path-Contracts
contractExecutionPolicy

	^ SContractExecutionPolicyRegistry
		atProcess: self
		ifAbsent: [SExecutionPolicy default]