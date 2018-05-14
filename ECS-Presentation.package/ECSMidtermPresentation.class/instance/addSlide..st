as yet unclassified
addSlide: aWidget

	slides add: (aWidget
		addStyleClass: #slide;
		expand: true).
	slides selectWidgetAt: slides submorphCount.
	self updateCounter