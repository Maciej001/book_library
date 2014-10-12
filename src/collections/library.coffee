# src/collections/library.coffee
#
# Library collection

$ ->
	class App.Library extends Backbone.Collection
		model: App.Book