initialization
removeAll
	| toRemove |
	toRemove := Set new.
	toRemove addAll: connections.
	toRemove addAll: classMorphs.
	classMorphs := WeakValueDictionary new.
	connections := WeakValueDictionary new.
	self pasteUp removeAllMorphsIn: toRemove.
	^toRemove
