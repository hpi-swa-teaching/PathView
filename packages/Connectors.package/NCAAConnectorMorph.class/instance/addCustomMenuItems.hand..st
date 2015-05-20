menus
addCustomMenuItems: aMenu hand: aHandMorph
	"Use my line's menu additions"
	super addCustomMenuItems: aMenu hand: aHandMorph.
	aMenu addLine.


	line addFillStyleMenuItems: aMenu hand: aHandMorph.
	aMenu addLine.

	aMenu
		addUpdating: #handlesShowingPhrase target: self action: #showOrHideHandles;
		addUpdating: #orthogonalityPhrase target: self action: #toggleOrthogonality.

	self vertices size > 2 ifTrue: [ 
		line isCurve
			ifTrue: [aMenu add: 'make segmented line' translated action: #toggleSmoothing]
			ifFalse: [aMenu add: 'make smooth line' translated action: #toggleSmoothing].
		aMenu add: 'straighten' translated target: self selector: #straighten.
	]. 
	
	self addBasicArrowMenuItemsTo: aMenu event: nil.

	aMenu 
		addLine;
		add: 'add label' translated action: #addLabel:.
