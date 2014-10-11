# src/views/library.coffee

# Library View
$ ->
	class app.LibraryView extends Backbone.View 
		el: '#books'  # form wrapper

		initialize: ->
			@collection = new app.Library initialBooks
			@render

		# render Library by rendering each book in the collection
		render: ->
			@collection.each( (item) -> @renderBook item, this )

		renderBook: (item) ->
			bookView = new app.bookView
				model: item

				@$el.append bookView.render().el