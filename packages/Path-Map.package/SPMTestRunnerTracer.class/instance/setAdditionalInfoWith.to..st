visualization
setAdditionalInfoWith: aString to: aMorph
	aMorph additionalInfo: (aMorph methodReference asStringOrText, 
							Character cr, 
							aString, 
							Character cr).