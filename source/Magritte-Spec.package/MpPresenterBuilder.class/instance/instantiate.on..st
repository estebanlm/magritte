instance creation
instantiate: aPresenterClass on: aModel
	"Instantiate a SpPresenter subclass and set its instance owner and model"

	^ aPresenterClass 
		owner: self presenter 
		on: aModel