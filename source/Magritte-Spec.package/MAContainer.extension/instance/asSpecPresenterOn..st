*Magritte-Spec
asSpecPresenterOn: anObject
	
	^ MpContainerPresenter memento: (anObject mementoClass
			model: anObject 
			description: self)