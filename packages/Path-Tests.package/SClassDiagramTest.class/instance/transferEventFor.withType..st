transfer-event-helpers
transferEventFor: aPassenger withType: aTransferType

	^ self dropEventFor: ((TransferMorph withPassenger: aPassenger)
							dragTransferType: aTransferType;
							yourself)