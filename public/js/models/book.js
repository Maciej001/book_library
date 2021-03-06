// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  $(function() {
    return App.Book = (function(_super) {
      __extends(Book, _super);

      function Book() {
        return Book.__super__.constructor.apply(this, arguments);
      }

      Book.prototype.defaults = {
        coverImage: '../public/img/ejs.png',
        title: 'No title',
        author: 'Unknown',
        releaseDate: 'Unknown',
        keywords: 'None'
      };

      return Book;

    })(Backbone.Model);
  });

}).call(this);
