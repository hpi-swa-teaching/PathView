postload
downloadHunspellFiles
	self 
		downloadFile: 'libhunspell.dll' binary: true;
		downloadFile: 'en_US.aff' binary: false;
		downloadFile: 'en_US.dic' binary: false;
		downloadFile: 'thes_data.dat' binary: false.