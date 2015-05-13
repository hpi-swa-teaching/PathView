concerns
involvedConcerns
	| tests concerns projectConcerns |
	tests := self coveredTestsSortedFor: self selectedMethodReference.
	concerns := IdentityDictionary new. 
	tests 
		ifNotEmpty: [
			projectConcerns := SProject current concerns.
			projectConcerns groups keysDo: [:group |
				concerns at: group put: IdentitySet new.
				tests do: [:test | 
					concerns 
						at: group 
						put: ((concerns at: group),
							(projectConcerns 
								concernsOfGroup: group 
								andTest: test asMethodReference))]]].
		^ concerns