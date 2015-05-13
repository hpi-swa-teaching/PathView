visualization
addInstanceCountInfo: aNumber to: aMorph

	aMorph additionalInfo: aMorph sourceCodeEntity asString, Character cr,
						    aNumber asString, ' objects were created.', Character cr.