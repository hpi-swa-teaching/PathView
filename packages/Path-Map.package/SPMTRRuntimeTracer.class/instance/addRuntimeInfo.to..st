visualization-runtime
addRuntimeInfo: aDuration to: aMorph

	aMorph additionalInfo: aMorph methodReference asStringOrText, Character cr,
						    'required ', aDuration asMilliSeconds asString, ' ms.', 
							Character cr.