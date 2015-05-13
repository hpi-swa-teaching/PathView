concerns
methodsCoveredBy: aCollection
	| key |
	^ aCollection inject: Set new into: [:set :each | 
		key := SProject current coverage keys 
							detect: [:test | test asMethodReference = each] ifNone: [nil].
		key ifNotNil: [set addAll: (SProject current coverage at: key) keys].
		set yourself]