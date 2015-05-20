distribution
makeSAR
	"ConnectorsInfo makeSAR"
	Smalltalk at: #SARPackageDumper ifPresent: [ :sarPackageDumper |
		sarPackageDumper fileOutPackage: self default
			as: ('Connectors', self default cvsID, '.sar')
	]