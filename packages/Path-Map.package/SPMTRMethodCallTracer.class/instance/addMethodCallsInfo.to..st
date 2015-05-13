visualization
addMethodCallsInfo: aNumber to: aMorph
	aMorph additionalInfo: aMorph methodReference asStringOrText, Character cr,
						    'was called ', aNumber asString, ' times.', Character cr.