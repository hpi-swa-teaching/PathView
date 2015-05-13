testing
test08ContentTypes
	| property |
	self run: SSBValueRangeTest with: #testString4.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property contentTypes = (Set 
											with: #fileDirectory 
											with: #asNumber 
											with:  #asInteger 
											with: #asTime 
											with: #asDate).