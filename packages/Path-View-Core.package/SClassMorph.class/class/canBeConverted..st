morph conversion
canBeConverted: aMorph
	
	^ aMorph dragTransferType 
		caseOf: {
			[ self classMorphTransferType ] -> [ true ].
			[ self omniBrowserTransferType ] -> [ aMorph passenger isClassNode ].
		}
		otherwise: [ 
			(aMorph respondsTo: #passenger) 
			and: [ aMorph passenger isBehavior ] ] "Anything that carries a class is good to go"