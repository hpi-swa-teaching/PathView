halos and balloon help
transferHalo: event from: formerHaloOwner
	"Progressively transfer the halo to the next likely recipient"

	(formerHaloOwner == self) ifTrue:[
		self input ifNotNilDo: [ :in |  ^in transferHalo: event from: formerHaloOwner ] ].
	^super transferHalo: event from: formerHaloOwner