# src/models/book.coffee
#
# Book model
# creates a simple model for single Book

# book cover images have to be placed in public/img/ folder 

$ ->
	class App.Book extends Backbone.Model
		defaults:
			coverImage: '../public/img/ejs.png'
			title:			'No title'
			author:			'Unknown'
			releaseDate:'Unknown'
			keywords:		'None'