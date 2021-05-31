Select ?child_name 
where {
      ?ID_not_good_r <http://purl.org/dc/elements/1.1/#name> "Reuven Ariel".
  	  ?ID_not_good_r <http://purl.org/dc/elements/1.1/#id> ?id_r.
      ?ID_not_good_f <http://purl.org/dc/elements/1.1/#Father_ID> ?id_r.
      ?ID_not_good_f <http://purl.org/dc/elements/1.1/#id> ?id_f.
  	  ?ID_not_good_child <http://purl.org/dc/elements/1.1/#Father_ID> ?id_f.
      ?ID_not_good_child <http://purl.org/dc/elements/1.1/#name> ?child_name.   
}


Select ?child_name 
where {
      ?ID_r name "Reuven Ariel".
  	  ?ID_r id ?id_r.
      ?ID_f Father_ID ?id_r.
      ?ID_f id ?id_f.
  	  ?ID_child Father_ID ?id_f.
      ?ID_child name ?child_name.   
}