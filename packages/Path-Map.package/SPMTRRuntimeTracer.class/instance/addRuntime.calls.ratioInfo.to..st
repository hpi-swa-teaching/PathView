visualization-ratio
addRuntime: aDuration calls: aNumber ratioInfo: aRatioNumber to: aMorph
	aMorph additionalInfo: aMorph methodReference asStringOrText, Character cr,
						'required ', (aRatioNumber // (10 raisedToInteger: 6)) asString, 	
						' ms per call.', Character cr, 
						'(', aDuration asMilliSeconds, 
						' ms / ', aNumber, ' calls).', Character cr.