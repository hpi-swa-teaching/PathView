building
buildWindowWith: aBuilder
	
	| pathViewSpec |
	self buildWindowOn: aBuilder.
	self windowSpec
		model: self classDiagramMorph;
		label: #windowLabel;
		closeAction: nil.
	pathViewSpec :=  SPathViewDiagramSpec new
											model: self;
											children: OrderedCollection new;
											frame: (0@0.10 extent: 1@0.90);
											viewAreaMorph: self classDiagramMorph.
	self windowSpec children addAll: { pathViewSpec }.
	self buildButtonsWith: aBuilder.
	super buildWith: aBuilder.