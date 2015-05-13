private
checkTouches:  aWrapperAssociationCollection

	aWrapperAssociationCollection do: [:each | 
		self assert: each key touched = each value].
	