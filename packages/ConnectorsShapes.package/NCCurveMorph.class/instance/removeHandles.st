curve editing
removeHandles
	| handles |
	handles := submorphs
				select: [:ea | ea isCurveHandle].
	self deleteMorphs: handles.
	self
		valueOfProperty: #oldLayoutPolicy
		ifPresentDo: [:old | self layoutPolicy: old first;
				 hResizing: old second;
				 vResizing: old third.
				self removeProperty: #oldLayoutPolicy. ]