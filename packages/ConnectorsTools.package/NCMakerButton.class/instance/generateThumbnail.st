submorphs-add/remove
generateThumbnail
	"Initialize me to show aThumbnail on my face,  
	and with a label given by the target's name if I'm supposed to have  
	one"
	target
		ifNil: [^ self].
	self isLabeled
		ifTrue: [| labeledItem | 
			labeledItem := AlignmentMorph newColumn beTransparent.
			labeledItem borderWidth: 0.
			labeledItem
				addMorph: ((Thumbnail new maxWidth: 60 minHeight: 30)
						makeThumbnailFromForm: (target makerButtonImageOfColor: self color asNontranslucentColor)).
			labeledItem addMorphBack: (Morph new extent: 4 @ 4) beTransparent.
			labeledItem addMorphBack: (TextMorph new backgroundColor: self color asNontranslucentColor;
					 contentsAsIs: target nameForButton;
					
					beAllFont: (self class labelTextStyle fontOfSize: 15);
					 centered).
			self
				labelGraphic: (labeledItem makerButtonImageOfColor: self color asNontranslucentColor)]
		ifFalse: [self
				labelGraphic: (target makerButtonImageOfColor: self color asNontranslucentColor)]