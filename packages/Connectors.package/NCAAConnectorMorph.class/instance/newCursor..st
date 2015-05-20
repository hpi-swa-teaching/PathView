private
newCursor: aCursor
	Cursor currentCursor ~= aCursor
		ifTrue: [ Cursor currentCursor: aCursor ]