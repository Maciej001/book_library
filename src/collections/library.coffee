# src/collections/library.coffee
#
# Library collection
# Library is a collection of Book models
$ ->
	class App.Library extends Backbone.Collection
		model: App.Book