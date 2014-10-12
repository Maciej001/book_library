// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  $(function() {
    return App.LibraryView = (function(_super) {
      __extends(LibraryView, _super);

      function LibraryView() {
        return LibraryView.__super__.constructor.apply(this, arguments);
      }

      LibraryView.prototype.el = '#books';

      LibraryView.prototype.initialize = function(initialBooks) {
        this.collection = new App.Library(initialBooks);
        return this.render();
      };

      LibraryView.prototype.render = function() {
        return this.collection.each((function(_this) {
          return function(item) {
            return _this.renderBook(item);
          };
        })(this));
      };

      LibraryView.prototype.renderBook = function(item) {
        var bookView;
        bookView = new App.BookView({
          model: item
        });
        return this.$el.append(bookView.render().el);
      };

      return LibraryView;

    })(Backbone.View);
  });

}).call(this);
