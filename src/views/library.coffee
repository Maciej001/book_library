# src/views/library.coffee
#
# Library View

$ ->
	class App.LibraryView extends Backbone.View 
		el: '#books'  # form wrapper

		initialize: ( initialBooks ) ->
			@collection = new App.Library initialBooks
			@render()

		# render Library by rendering each book in the collection
		render: ->
			@collection.each (item) =>
				@renderBook item
				

		renderBook: (item) ->
			# create new item based on item data passed from render function
			bookView = new App.BookView
				model: item	
			
			@$el.append bookView.render().el



	
