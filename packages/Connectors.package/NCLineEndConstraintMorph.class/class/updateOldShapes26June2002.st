conversion
updateOldShapes26June2002
	"NCLineEndConstraintMorph updateOldShapes26June2002"
	"Change all pre-defined shapes to the better ones"
	self allSubInstancesDo: [ :lec |
		lec submorphsDo: [ :att | 
			(att isKindOf: PolygonMorph) ifTrue: [ | new |
				new := att knownName caseOf: {
				[ 'closed arrowhead' ] -> [ #closedArrowheadShape ].
				[ 'crows foot' ] -> [ #crowsFootShape ].
				[ 'double arrowhead' ] -> [ #doubleArrowheadShape ].
				[ 'filled arrowhead' ] -> [ #filledArrowheadShape ].
				[ 'filled circle' ] -> [ #filledCircleShape ].
				[ 'filled diamond' ] -> [ #filledDiamondShape ].
				[ 'junction dot' ] -> [ #junctionDotShape ].
				[ 'open arrowhead' ] -> [ #openArrowheadShape ].
				} otherwise: [ nil ].
				new ifNotNil: [ | newEnd |
					newEnd := self perform: new.
					lec deleteShape: att.
					lec addShape: newEnd.
				]
			]
		]
	].

	Smalltalk at: #NCMakerButton ifPresent: [ :ncmb |
		ncmb allSubInstancesDo: [ :ea |
		ea updateImage ]].
