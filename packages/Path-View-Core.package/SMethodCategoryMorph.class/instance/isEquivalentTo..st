accessing
isEquivalentTo: otherMethodCategoryMorph

  ^ (self class = otherMethodCategoryMorph class) &
     (self category = otherMethodCategoryMorph category) &
     (self klass = otherMethodCategoryMorph klass)