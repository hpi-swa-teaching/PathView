constraints
inputs: aCollection 
	inputs
		withIndexDo: [:ea :index | (ea notNil and: [ ea isHandMorph not]) ifTrue: [
				ea disconnectedFromEnd: self endIndex ofConnector: self owner.
				ea triggerEtoyEvent: #disconnectedFrom from: owner.
				owner triggerEtoyEvent: (firstVertex ifTrue: [ #sourceDisconnecting ] ifFalse: [ #destinationDisconnecting ])]].
	super inputs: aCollection.
	inputs
		do: [:ea | (ea notNil and: [ ea isHandMorph not])
				ifTrue: [ea connectedToEnd: self endIndex ofConnector: self owner.
						ea triggerEtoyEvent: #connectedTo from: owner.
						owner triggerEtoyEvent: (firstVertex ifTrue: [ #sourceConnected ] ifFalse: [ #destinationConnected ])]]
