db.books.find({$or:[{$and:[{publishing_year:{$lt:2000}},{for_age:{$gte:10}}]},{$and:[{authors:"Ruth Cohen"},{rank:{$gte:3}}]}]}).pretty()