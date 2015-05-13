mapping button
addMapping
	| tests |
	tests := OrderedCollection new.
	self isTestClassSelected
		ifTrue: [	self selectedTestClass inheritedTestSelectors 
					do: [:each | tests add: (MethodReference 
											class: self selectedTestClass 
											selector: each)].
				tests := tests select: [:each | (self project concerns 
												mappingExisting: self selectedConcern 
												and: each) not]]
		ifFalse: [tests add: self selectedTest].
	tests do: [:each | (self concernMapping 
						at: self selectedConcern 
						ifAbsentPut: [OrderedCollection new]) add: each].

