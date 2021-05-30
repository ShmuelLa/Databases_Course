db.books.find({$or:[{$and:[{publishing_year:{$lt:2000}},{for_age:{$gte:10}}]},{$and:[{authors:"Ruth Cohen"},{rank:{$gte:3}}]}]}).pretty()

mapper = function() {
        emit(this.the_book, this.publishing_year); 
        };
reducer = function(book, year) {
    return Array.sum(year);
};
db.books.mapReduce(
    mapper,
    reducer,
    {
        out:"ex11"
    }
);



mapper = function(){emit(this.the_book, this.publishing_year);};
reducer = function(book, year) {return Array.sum(year);};





Mori:
var m = function() {
    var words = this.the_book.split(" ");
    if (words) {
        for(var i=0; i<words.length; i++) {
            emit(words[i].length, 1);
        }   
    }
}
var r = function(k, v) {
    return v.length;
};

db.collection.mapReduce(
    m, r, { out: "words_count"  }
)
db.words_count.find()


var mapper = function() {  
    var book = this.the_book;
    if (book) { 
        book = book.toLowerCase().split(" "); 
        for (var i = book.length - 1; i >= 0; i--) {
            if (book[i])  {
               emit(book[i], 1);
            }
        }
    }
};
var reducer = function( key, values ) {    
    var count = 0;    
    values.forEach(function(v) {            
        count +=v;    
    });
    return count;
}