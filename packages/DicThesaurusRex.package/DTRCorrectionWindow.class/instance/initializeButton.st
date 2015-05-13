initialize-release
initializeButton
	ui replaceButton label: 'replace';
		 model: self;
		 action: #replace.
	ui replaceAllButton label: 'replace all';
		 model: self;
		 action: #replaceAll.
	ui ignoreButton label: 'next';
		 model: self;
		 action: #next.
	ui addToDictionaryButton label: 'add to dictionary';
		 model: self;
		 action: #addToDictionary