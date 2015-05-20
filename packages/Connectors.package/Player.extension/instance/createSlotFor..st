*connectors-embeddings
createSlotFor: anEmbeddedMorph 
	"anEmbeddedMorph has just been added to my costume because of explicit user action.  
	Create an instance variable and accessors for it as a Player-valued slot."
	| initialAnswer originalString itsName itsPlayer openViewers setterSelector initialValue |
	self costume isInWorld ifFalse: [ ^self ].

	initialAnswer := (anEmbeddedMorph externalName withoutTrailingDigits), '1'.
	initialAnswer := ScriptingSystem
				acceptableSlotNameFrom: initialAnswer
				forSlotCurrentlyNamed: nil
				asSlotNameIn: self
				world: self costume world.
	originalString := FillInTheBlank request: 'name for new variable: ' translated initialAnswer: initialAnswer.
	originalString isEmptyOrNil
		ifTrue: [^ self].
	itsName := ScriptingSystem
				acceptableSlotNameFrom: originalString
				forSlotCurrentlyNamed: nil
				asSlotNameIn: self
				world: self costume world.
	itsName size == 0
		ifTrue: [^ self].
	self assureUniClass.
	self slotInfo
		at: itsName
		put: (SlotInformation new initialize type: #Player).
	self addInstanceVarNamed: itsName withValue: (itsPlayer := anEmbeddedMorph assuredPlayer).
	self class compileAccessorsFor: itsName.
	setterSelector := Utilities setterSelectorFor: itsName.
	initialValue :=  self costume presenter standardPlayer.
	self class allSubInstancesDo: [ :p | p ~~ self ifTrue: [ p perform: setterSelector with: initialValue ]].
	anEmbeddedMorph setNamePropertyTo: itsName.
	openViewers := self allOpenViewersOnReceiverAndSiblings.
	openViewers isEmpty
		ifTrue: [^ self]
		ifFalse: [| aPresenter | 
			(aPresenter := self costume presenter)
				ifNil: [^ self].
			itsPlayer beViewed.
			openViewers
				do: [:aViewer | aPresenter updateViewer: aViewer forceToShow: ScriptingSystem nameForInstanceVariablesCategory]]