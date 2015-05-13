executing
doItReceiver

	^ self selectedChange ifNotNilDo: [:ch | ch changeClass theNonMetaClass]