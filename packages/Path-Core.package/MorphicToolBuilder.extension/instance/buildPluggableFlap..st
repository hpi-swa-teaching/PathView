*Path-Core
buildPluggableFlap: aSpec
	| widget children frame |
	widget := self flapClass new.
	self register: widget id: aSpec name.
	widget model: aSpec model.
	aSpec icon ifNotNil: [widget flapIcon: aSpec icon].
	
	widget clipSubmorphs: true.
	children := aSpec children.
	children isSymbol ifTrue: [
		widget getChildrenSelector: children.
		widget update: children.
		children := #()].
	self buildAll: children in: widget.
	
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	self setLayout: aSpec layout in: widget.
	widget 
		layoutInset: 3;
		borderWidth: 2;
		borderColor: #raised.
	widget submorphsDo: [:sm |
		(frame := sm layoutFrame) ifNotNil:[
			(frame rightFraction = 0 or:[frame rightFraction = 1]) 
				ifFalse:[frame rightOffset: 1].
			(frame bottomFraction = 0 or: [frame bottomFraction = 1]) 
				ifFalse:[frame bottomOffset: 1]]].
	widget color: (Color r: 0.672 g: 0.672 b: 0.672).
	widget layoutFrame leftOffset: 1.
	widget switchExpandState.
	^widget