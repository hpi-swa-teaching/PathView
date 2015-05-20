state handlers
stateDragging: evt 
	^evt caseOf: { 
				[#entry] -> 
						[self startDrag: event.
						nil].
				[#exit] -> 
						[self stopDrag: event.
						nil].
				[#mouseUp] -> [ self returnToIdleHistory ]}
		otherwise: [self global]