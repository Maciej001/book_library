# src/models/book.coffee
#
# Book model
# creates a simple model for single Book

$ ->
	class App.Book extends Backbone.Model
		defaults:
			coverImage: '../public/img/ejs.png'
			title:			'No title'
			author:			'Unknown'
			releaseDate:'Unknown'
			keywords:		'None'