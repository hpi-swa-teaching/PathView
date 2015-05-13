instance creation
forClass: aClass withSelector: aSelector model: aCallTreeModel

	^ (self for: aCallTreeModel)
			clientClass: aClass;
			clientSelector: aSelector