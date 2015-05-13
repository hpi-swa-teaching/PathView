running
endExecutionOf: anEntryPoint withResult: anObject

	self gatheredValues ifNotEmpty: [
		self valueDict 
			at: anEntryPoint
			put: self gatheredValues].
	self reset.