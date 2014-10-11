# src/models/book.coffee

$ ->
	class app.Book extends Backbone.Model
		defaults:
			coverImage: '../img/ejs.png'
			title:			'No title'
			author:			'Unknown'
			releaseDate:'Unknown'
			keywords:		'None'