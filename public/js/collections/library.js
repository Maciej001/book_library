// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  $(function() {
    return App.Library = (function(_super) {
      __extends(Library, _super);

      function Library() {
        return Library.__super__.constructor.apply(this, arguments);
      }

      Library.prototype.model = App.Book;

      return Library;

    })(Backbone.Collection);
  });

}).call(this);
