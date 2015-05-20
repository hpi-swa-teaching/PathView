*connectors-graphs
addAllSuccessorsTo: aSet
	| successors |
	successors := self successors.
	successors do: [ :successor | (aSet includes: successor) ifFalse: [ aSet add: successor. successor addAllSuccessorsTo: aSet ]]