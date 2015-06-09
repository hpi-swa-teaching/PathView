menu-actions
dirty: aBoolean
	
	dirty := aBoolean.
	"The dirty-flag is the most frequently changed flag, use it to update all sorts of states."
	self
		changed: #isDirty;
		changed: #hasChanged;
		changed: #hasSubmorphs;
		changed: #windowLabel;
		changed: #isSaved.