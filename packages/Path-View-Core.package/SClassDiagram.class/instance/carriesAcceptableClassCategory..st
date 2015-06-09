layout graph-based
carriesAcceptableClassCategory: aMorph
	
	^ (aMorph isKindOf: TransferMorph) 
		and: [ aMorph passenger isKindOf: OBClassCategoryNode ]