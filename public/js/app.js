// Generated by CoffeeScript 1.8.0
(function() {
  $(function() {
    var books;
    books = [
      {
        title: 'JavaScript: The Good Parts',
        author: 'Douglas Crockford',
        releaseDate: '2008',
        keywords: 'JavaScript Programming'
      }, {
        title: 'The Little Book on CoffeeScript',
        author: 'Alex MacCaw',
        releaseDate: '2012',
        keywords: 'CoffeeScript Programming'
      }, {
        title: 'Scala for the Impatient',
        author: 'Cay S. Horstmann',
        releaseDate: '2012',
        keywords: 'Scala Programming'
      }, {
        title: 'American Psycho',
        author: 'Bret Easton Ellis',
        releaseDate: '1991',
        keywords: 'Novel Splatter'
      }, {
        title: 'Eloquent JavaScript',
        author: 'Marijn Haverbeke',
        releaseDate: '2011',
        keywords: 'JavaScript Programming'
      }
    ];
    return new App.LibraryView(books);
  });

}).call(this);
