printing
storeString

	^ String streamContents: [:stream |
		stream
			nextPutAll: '(';
			nextPutAll: self class name;
			space;
			nextPutAll: 'new typeOfContainer: ';
			nextPutAll: self typeOfContainer storeString;
			nextPutAll: '; typeOfElements: ';
			nextPutAll: self typeOfElements storeString;
			nextPutAll: '; typeOfKeys: ';
			nextPutAll: self typeOfKeys storeString;
			nextPutAll: '; yourself)']