Select ?n 
where {
    ?ID <http://purl.org/dc/elements/1.1/#name> "ראובן אריאל".
    ?father <http://purl.org/dc/elements/1.1/#Father_ID> ID.
    ?grandson_id <http://purl.org/dc/elements/1.1/#Father_ID> father.
    ?grandson_id <http://purl.org/dc/elements/1.1/#name> ?n.
}



Select ?n where {
    ?ID 	<http://purl.org/dc/elements/1.1/#name> "Reuven Ariel".
  ?father Father_ID ID.
}



	<http://purl.org/dc/elements/1.1/#Father_ID>
    <http://purl.org/dc/elements/1.1/#age>