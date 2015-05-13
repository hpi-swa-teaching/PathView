public api
isActive
	
	^ self invariantsActive or: [self preconditionsActive] or: [self postconditionsActive]