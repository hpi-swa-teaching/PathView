instance creation
buttonTarget: target action: selector arguments: args icon: iconName label: label
	"Construct an IconicButton with the given icon and label
	and make it send selector to target with args"
	| thumbnail button labeledItem form |
	form := Imports default imports at: iconName
		ifAbsent: [ NCMakerButton squeakyMouseForm ].
	thumbnail := (self emptyButtonThumbnail)
		makeThumbnailFromForm: form.

	labeledItem := AlignmentMorph newColumn beTransparent.
	labeledItem borderWidth: 0.
	labeledItem addMorph: thumbnail.
	labeledItem addMorphBack: (Morph new extent: (4@4)) beTransparent.
	labeledItem addMorphBack: (BorderedStringMorph contents: label font: (self buttonClass labelFont)).

	button := IconicButton new.
	button
		color: (Color veryLightGray);
		labelGraphic: labeledItem imageForm;
		actWhen: #buttonUp;
		borderRaised;
		borderWidth: 2;
		target: target;
		actionSelector: selector;
		arguments: args;
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	^button