evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| viewString |
	self tracer isActive
		ifTrue: [
			self 
				beforeMethod;
				beforeMethod: anObject.
			self tracer stopTracing.
			viewString := self getViewString: anObject.
			self tracer addView: viewString to: self selectedView.
			self tracer startTracing.
			[^ self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects] 
				ensure: [self afterMethod]]
		ifFalse: [^ self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects].


