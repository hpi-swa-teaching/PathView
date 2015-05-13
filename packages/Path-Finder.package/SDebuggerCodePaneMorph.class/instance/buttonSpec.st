buttons
buttonSpec
	| spec |
	spec := super buttonSpec.
	spec add: {#faultLocalizationForMethod. UiFugueIcons magnifierExclamationIcon. 'Localize faults at statements'} afterIndex: 3.
	^ spec