building
buildButtons
	| panel buttons |
	panel := PluggablePanelMorph new.
	buttons := #('done' 'accept' 'cancel') collect: [:n |
		PluggableButtonMorphPlus on: self
				getState: nil
				action: n asSymbol
				label: (n, 'Label') asSymbol].
	panel
		layoutInset: 0;
		addMorph: buttons first fullFrame: (LayoutFrame fractions: (0@0 corner: 0.33@1));
		addMorph: buttons second fullFrame: (LayoutFrame fractions: (0.33@0 corner: 0.66@1));
		addMorph: buttons third fullFrame: (LayoutFrame fractions: (0.66@0 corner: 1@1)).
	self addMorph: panel frame: (0@0.4 corner: 1@0.5).