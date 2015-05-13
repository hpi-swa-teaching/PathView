controls-inavariants
buildSwitchesWith: builder
	"Build the instance/comment/invariant/class switches"
	| panelSpec buttonSpec |
	panelSpec := builder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'inst'; 
			state: #instanceMessagesIndicated; 
			action: #indicateInstanceMessages;
			frame: (0@0 corner: 0.31@1).
	panelSpec children addLast: buttonSpec.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: '?'; 
			state: #classCommentIndicated; 
			action: #plusButtonHit;
			frame: (0.33@0 corner: 0.47@1).
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'inv'; 
			state: #invariantsShown; 
			action: #toggleInvariants;
			color: #invariantsButtonColor;
			enabled: #hasInvariants;
			frame: (0.49@0 corner: 0.65@1).
	panelSpec children addLast: buttonSpec.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'class'; 
			state: #classMessagesIndicated; 
			action: #indicateClassMessages;
			frame: (0.67@0 corner: 1@1).
	panelSpec children addLast: buttonSpec.

	^ panelSpec