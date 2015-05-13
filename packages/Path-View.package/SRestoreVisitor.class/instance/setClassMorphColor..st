restoring
setClassMorphColor: aMorph
	| storeArray color |
	storeArray := self classStore first.
	storeArray isArray ifTrue: [
		color := storeArray second.
		aMorph color: color].