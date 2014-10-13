# src/views/book.coffee
#
# Book View
# Displays single view using #bookTemplate 
# Template is defined in index.html and is injected with data from Book model

$ ->
	class App.BookView extends Backbone.View
		tagName: 			'div'
		className: 		'book-container'
		template:			_.template( $('#bookTemplate').html() )

		events: 
			'click .delete': 		'deleteBook'

		initialize: ->
			@listenTo @model, 'destroy', @remove

		render:	->
			@$el.html @template( @model.toJSON() )

			# return rendered element
			return this

		deleteBook: ->
			console.log 'delete clicked'
			@model.destroy()
			
			# destroying is not enough. listen to the 'destroy' on model and react with remove action
