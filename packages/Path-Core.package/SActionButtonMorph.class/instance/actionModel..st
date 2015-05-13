accessing
actionModel: anObject
	actionModel ifNotNil: [actionModel removeDependent: self].
	actionModel := anObject.
	actionModel addDependent: self.
	self updateEnabledStatus.