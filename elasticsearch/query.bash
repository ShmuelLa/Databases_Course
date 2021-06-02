 curl -XGET "http://localhost:9200/university/students/_search" -d" 
{ \"query\" : 
    { \"bool\" : 
        { \"filter\" : 
            { \"match\" : 
                { \"Genre\" : \"Science Fiction\" } 
            }, 
        \"filter\" : 
            { \"range\" : 
                { \"Publish_Year\" : 
                    { \"gte\" : 2999 } 
                } 
            },
        \"filter\" : 
            { \"match_phrase\" : 
                { \"Summary\" :  \"reality\"} 
            },
        \"filter\" : 
            { \"match_phrase\" : 
                { \"Summary\" :  \"Fiction Science\"} 
            },
        } 
    } 
}"
