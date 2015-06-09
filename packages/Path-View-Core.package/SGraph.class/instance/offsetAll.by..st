computation
offsetAll: collectionOfElements by: aPoint
	
	collectionOfElements do: [ :node | node offsetBy: aPoint ].