distribution
recatConnectorsExtensionsText
	"Answer the text of a block that will fix the mis-categorized Connectors categories before loading. But make sure not to clobber existing installations!
	ConnectorsBasicDistroInfo recatConnectorsExtensionsText
	"
^'| info prefix org badCats newCat done |
(Smalltalk hasClassNamed: #NCAAConnectorMorph) ifFalse: [
done := OrderedCollection new.
{ #Connectors. #StandardYellowButtonMenus. #FlexibleVocabularies  } do: [ :pkgName |
info := PackageInfo named: pkgName.
info extensionClasses do: [ :cls |
  org := cls organization.
  prefix := info methodCategoryPrefix.
  badCats := org categories select: [ :cat | info category: cat matches: prefix ].
  badCats do: [ :oldCat |
    newCat := oldCat copyFrom: (prefix size + 2)  to: oldCat size.
    (org listAtCategoryNamed: oldCat) do: [ :sym | org classify: sym under: newCat ].
	done addLast: { cls name . oldCat . newCat } ]]]].'