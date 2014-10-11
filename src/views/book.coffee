# src/views/book.coffee
#
# Book View
$ ->
	class app.BookView extends Backbone.View
		tagName: 			'div'
		className: 		'book-container'
		template:			_.template( $('#bookTemplate').html() )

		render:	->
			@$el.html @template( @model.toJSON() )

			# return rendered element
			return this

