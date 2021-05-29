var map = function() {  
    var words = this.the_book;
    if (words) { 
        words = words.split(" "); 
        for (var i = words.length - 1; i >= 0; i--) {
            if (words[i])  {
               emit(words[i].length, 1);
            }
        }
    }
};
var reduce = function( key, values ) {    
    return Array.sum(values);
};
db.books.mapReduce(
    map, 
    reduce, 
    {
        out: "word_count",
        query:{publishing_year:{$ne:2000}}

    }
)
db.word_count.find()