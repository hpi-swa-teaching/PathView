message functions
iconForMessage: anInteger
	| icon reference |
	self methodColors ifNil: [^ nil].
	reference := MethodReference 
		class: self selectedClassOrMetaClass 
		selector: (self messageList at: anInteger ifAbsent: [nil]).
	reference ifNil: [^ nil].
	icon := Form extent: 15@15 depth: 32.
	icon fillColor: (self methodColors at: reference ifAbsent: [^ nil]).
	^ icon