# src/views/library.coffee
#
# Library View
# It initializes the Library with set of books passed as initialBooks
# then it renders books using Book View from library collection

$ ->
	class App.LibraryView extends Backbone.View 
		el: '#books'  # form wrapper

		events: 
			'click #add':			'addBook'

		initialize: ( initialBooks ) ->
			@collection = new App.Library initialBooks
			@render()



		# render Library by rendering each book in the collection
		render: ->
			@collection.each (item) =>
				@renderBook item
				

		renderBook: (item) ->
			# create new item based on item data passed from render function§
			bookView = new App.BookView
				model: item	
			# render the book for each book 
			@$el.append bookView.render().el

		addBook: (e) ->
			# select all  input fields from add book form
			$book_data = $('.add-book-inputs')
			formData = {}
			e.preventDefault()

			# iterate through the all input fields, and check the value
			# if there is a value store it in formData, eg. formData[ title ] = 'new title'
			$book_data.each (index, el) ->
				if $(el).val() isnt ''
					formData[ el.id ] = $( el ). val()

			# add new book to the collection		
			@collection.add( new App.Book formData )
			console.log @collection
			



			





	
