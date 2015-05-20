private
morphDo: aBlock
	"Evaluate aBlock with my morph.
	Intended for future use to suppress callbacks for event response testing."
	^aBlock value: morph