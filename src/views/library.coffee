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

			@listenTo @collection, 'add', @renderBook



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

			# prevents form submission and reloading of the page
			e.preventDefault()

			# iterate through the all input fields, and check the value
			# if there is a value store it in formData, eg. formData[ title ] = 'new title'
			$book_data.each (index, el) ->
				# if the value in input field not empty
				if $(el).val() isnt ''

					# if input filed is for image
					if $(el).attr('id') is 'coverImage'
						formData['coverImage'] = '../public/img/' + $(el).val().replace(/^.*[\\\/]/, '')
					# all other input fields	
					else
						formData[ el.id ] = $( el ).val().split("\"").pop()

					#empty input field
					$( el ).val('')

			# move the cursor to the title field of input form
			$book_data[1].focus()

			# add new book to the @collection		
			@collection.add( new App.Book formData )






			





	
