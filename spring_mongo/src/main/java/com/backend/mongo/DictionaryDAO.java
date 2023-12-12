package com.backend.mongo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class DictionaryDAO {

	@Autowired
	MongoTemplate mongo;
	
	public DictionaryVO one(String word) {
		Query query = new Query(new Criteria("word").is(word));
		return mongo.findOne(query, DictionaryVO.class, "dictionary");
	}
}
