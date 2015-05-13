*Path-Core
versions
	^ VersionsBrowser new
			scanVersionsOf: self 
			class: self methodClass 
			meta: self methodClass isMeta
			category: nil 
			selector: self selector.