controls-inavariants
toggleInvariants
	"Toggle code pane between displaying invariants and regular class / instance code"
	self selectedClassOrMetaClass ifNil: [^ self].
	self codeSource: nil.
	((self editSelection = #editInvariants) or: 
	 [self selectedClassOrMetaClass organization invariantMethod isNil])
		ifTrue: [currentCompiledMethod := nil.
			"automatically sets editSelection to message"
			self messageCategoryListIndex: 0]
		ifFalse: [self metaClassIndicated 
			ifTrue:  
				[currentCompiledMethod := self selectedClassOrMetaClass class organization invariantMethod]
			ifFalse: 
				[currentCompiledMethod := self selectedClassOrMetaClass organization invariantMethod].
			self messageCategoryListIndex: 0;
				contentsSymbol: #source;
				editSelection: #editInvariants].
	self 
		changed: #classSelectionChanged;
		changed: #messageCategoryList;
		changed: #messageList;
		decorateButtons;
		contentsChanged