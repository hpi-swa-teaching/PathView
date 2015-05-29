instance creation
store: aClassMorph

	^ [(self new visit: aClassMorph) store] on: SVisitorNotification do: [nil]