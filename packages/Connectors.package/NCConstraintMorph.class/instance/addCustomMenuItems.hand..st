menus
addCustomMenuItems: aCustomMenu hand: aHandMorph 
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu
		addLine;
		add: 'attach to...' translated action: #attachToSelectedMorph:;
		add: 'display attachments' translated action: #displayInputs;
		addLine.

	false
		ifTrue: [aCustomMenu
				add: 'add arbitrary shape...' translated
				target: self
				selector: #addSelectedMorph:.
			self class preMadeShapeNames isEmpty
				ifFalse: [aCustomMenu add: 'add pre-made shape...' translated subMenu: self selectShapeMenu].
			aCustomMenu
				add: 'delete shape...' translated
				target: self
				selector: #deleteSelectedMorph:;
				 addLine].

	"connectToAbsolutePoint:"

	#(#connectToCenter
		#connectToNearestAttachmentPoint
		#connectToNearestPoint
		#connectToNearestPointToCenter
		#connectToRelativePoint:
		#noConnectionPreference )
		do: [:sel | aCustomMenu
				addUpdating: #connectionWordingFor:
				target: self
				selector: #choosePreferredConnection:
				argumentList: {sel}].
	self dieWithInput
		ifFalse: [aCustomMenu
				addUpdating: #connectionWordingFor:
				target: self
				selector: #choosePreferredConnection:
				argumentList: #(#connectToNothing )]