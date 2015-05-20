initialization
initialize
	classMorphs := WeakValueDictionary new.
	connections := WeakValueDictionary new.
	random := Random new.
	self pasteUp: self currentWorld.