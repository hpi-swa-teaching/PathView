protected-policy
setCorrectOwnerForConnections: connections
	| numberOfConnections owners1 owners2 n innermostOwner |

	self needsOwnerSet: false.

	numberOfConnections := connections size.
	numberOfConnections = 0 ifTrue: [ ^self ].

	numberOfConnections = 1 ifTrue: [ innermostOwner := connections first pasteUpMorphOrWorld ].

	"Make sure that I am owned by the innermost of my connections' common owners"
	numberOfConnections = 2 ifTrue: [

	innermostOwner := connections first pasteUpMorphOrWorld.
	innermostOwner ifNil: [ ^self ].

	(connections second pasteUpMorphOrWorld ~~ innermostOwner) ifTrue: [

		owners1 := innermostOwner withAllOwners select: [ :ea | ea isPlayfieldLike ].
		owners2 := connections second allOwners  select: [ :ea | ea isPlayfieldLike ] .

		owners1 size + (owners2 size) == 3 ifTrue: [ innermostOwner := owners1 last ]
		ifFalse: [
			n := (owners1 size min: owners2 size) - 1.
			(owners1 size to: owners1 size - n by: -1)
				with: (owners2 size to: owners2 size - n by: -1)
					do: [ :i1 :i2 | | o1 o2 |
				o1 := (owners1 at: i1).
				o2 := (owners2 at: i2).
				o1 == o2 ifTrue: [ innermostOwner := o1 ]
			].
		].
	].
	].

	innermostOwner ifNotNil: [
		self owner == innermostOwner
			ifFalse: [
				^self jumpToOwner: innermostOwner.
			]
	].

	connections do: [ :conn | | hisOwner |
		hisOwner := conn orOwnerSuchThat: [ :ea | ea owner == owner ].
		hisOwner ifNotNil: [
			(line bounds intersects: (hisOwner bounds insetBy: 1))
				ifTrue: [ "owner ensureMorph: hisOwner behind: self" ]
		]
	]