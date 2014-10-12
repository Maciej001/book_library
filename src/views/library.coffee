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
			_.each( @collection, (item) -> console.log item)
				

		renderBook: (item) ->
			console.log item['title']
			# bookView = new App.bookView
			# 	model: item
				
			# 	@$el.append bookView.render().el



	
