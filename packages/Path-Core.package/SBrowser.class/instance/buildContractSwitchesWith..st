controls-prepost
buildContractSwitchesWith: builder
	"Build the switches to view parts of contracts"
	| panelSpec buttonSpec |
	panelSpec := builder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'pre'; 
			state: #preconditionsShown; 
			action: #togglePreconditions;
			color: #conditionButtonColor;
			enabled: #hasConditions;
			frame: (0@0 corner: 0.39@1).
	panelSpec children addLast: buttonSpec.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'post'; 
			state: #classMessagesIndicated; 
			action: #togglePostconditions;
			color: #conditionButtonColor;
			enabled: #hasConditions;
			frame: (0.61@0 corner: 1@1).
	panelSpec children addLast: buttonSpec.

	^ panelSpec