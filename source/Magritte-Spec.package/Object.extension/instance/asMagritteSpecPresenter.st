*Magritte-Spec
asMagritteSpecPresenter
	
	^ MADynamicDescriptionCache 
		use: Dictionary new 
		during: [ self magritteDescription asSpecPresenterOn: self ]