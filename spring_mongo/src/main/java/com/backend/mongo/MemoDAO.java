package com.backend.mongo;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.WriteResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;

@Repository
public class MemoDAO {
	//mongoTemplate
	@Autowired
	MongoTemplate mongo; //100
	
	public void update(MemoVO vo) {
		System.out.println("dao update : " + vo);
		//where절 이후 조건 , sort ==> Query객체
		Query query = new Query(new Criteria("_id").is(vo.get_id()));
		//바꾸어야하는 값 지정 ==> Update객체
		Update update = new Update();
		update.set("content", vo.getContent());
		WriteResult result= mongo.updateMulti(query, update, MemoVO.class,"memo");
		
		System.out.println("result : " + result);
	}
	public void delete(String _id) {
		
		Query query = new Query(new Criteria("_id").is(_id));
		mongo.remove(query,"memo");
	}
	public void insert(MemoVO vo) {
		vo.setDate(new Date());
		mongo.insert(vo, "memo");
	}
	
	public MemoVO one(String _id) {
		return mongo.findById(_id, MemoVO.class,"memo");
	}
	
	public List<MemoVO>list(){
		Query query = new Query();
		query.with(new Sort(Sort.Direction.DESC,"date"));
		return mongo.find(query, MemoVO.class,"memo");
	}
}
