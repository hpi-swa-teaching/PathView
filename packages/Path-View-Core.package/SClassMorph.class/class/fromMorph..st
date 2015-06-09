morph conversion
fromMorph: aMorph
	"May only be called, if canBeConverted: aMorph has returned true. No further checks are performed here."
	
	^ aMorph dragTransferType 
		caseOf: {
			[ self classMorphTransferType ] -> [ aMorph ].
			[ self omniBrowserTransferType ] -> [ self on: aMorph passenger theClass ].
		}
		otherwise: [ self on: aMorph passenger ]