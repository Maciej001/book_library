# src/models/book.coffee
#
# Book model

$ ->
	class App.Book extends Backbone.Model
		defaults:
			coverImage: '../public/img/ejs.png'
			title:			'No title'
			author:			'Unknown'
			releaseDate:'Unknown'
			keywords:		'None'