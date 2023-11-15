package com.backend.mvc01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BbsDTO dto) {
		int result = 0;
		my.insert("bbs.create",dto);
		return result;
		
//		try {
//			// 3.SQL문 결정/생성
//			String sql = "insert into bbs values (null,?,?,?)"; // MYSQL
//			// String sql = "insert into bbs values (BBSSEQ.NEXTVAL, ?, ?, ?)"; // ORACLE
////		String sql = "insert into bbs(title, content, writer) values (?,?,?)";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, dto.getTitle());
//			ps.setString(2, dto.getContent());
//			ps.setString(3, dto.getWriter());
//
//			System.out.println("3.ok----------");
//
//			// 4.DB로 SQL문 전송
//			result = ps.executeUpdate();
//			System.out.println("4.ok----------");
//		} catch (Exception e) {
//			System.out.println("에러가 발생함.");
//		}
		

	}

	public int update(BbsDTO dto) {
		int result = my.update("bbs.update",dto);
		
		return result;
//		try {
//			// 3.SQL문 결정/생성
//			String sql = "update bbs set title = ?, content = ? where id = ?";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, dto.getTitle());
//			ps.setString(2, dto.getContent());
//			ps.setInt(3, dto.getId());
//
//			System.out.println("3.ok----------");
//
//			// 4.DB로 SQL문 전송
//			result = ps.executeUpdate();
//			System.out.println("4.ok----------");
//		} catch (Exception e) {
//			System.out.println("에러가 발생함.");
//		}
		

	}

	public int delete(BbsDTO dto) {
		int result = my.delete("bbs.delete",dto);
		return result;
//		try {
//			// 3.SQL문 결정/생성
//			String sql = "delete from bbs where id = ?"; // ORACLE
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setInt(1, dto.getId());
//
//			System.out.println("3.ok----------");
//
//			// 4.DB로 SQL문 전송
//			result = ps.executeUpdate();
//			System.out.println("4.ok----------");
//		} catch (Exception e) {
//			System.out.println("에러가 발생함.");
//		}
		

	}

	// 리스트 전체 보기
	public List<BbsDTO> list() throws Exception {
		// 3.SQL문 결정/생성
		List<BbsDTO> list = my.selectList("bbs.list");
		return list;
//		PreparedStatement ps = con.prepareStatement(sql);
//		System.out.println("3.ok----------");
//
//		// 4. sql문 mysql서버로 전송
//		// 5. 검색결과를 ArrayList에 넣어서 return
//		ArrayList<BbsDTO2> list = new ArrayList<>();
//		ResultSet rs = ps.executeQuery();
//		while (rs.next()) { // true이면
//			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
//			// 내부적으로 한 행씩 가르키게 됨: 커서!
//			// 가방을 하나 만들어서
//			BbsDTO2 dto = new BbsDTO2();
//			dto.setId(rs.getInt(1));
//			dto.setTitle(rs.getString(2));
//			dto.setContent(rs.getString(3));
//			dto.setWriter(rs.getString(4));
//
//			// 가방을 list에 넣는다.
//			list.add(dto);
//		}
//		System.out.println(list.size());
		

	}

	// 리스트 중에서 선택한 물건 하나 보기
	public BbsDTO one(BbsDTO dto) throws Exception {
		// 3.SQL문 결정/생성
		BbsDTO dto2 = my.selectOne("bbs.one",dto);
		
		return dto2;
//		PreparedStatement ps = con.prepareStatement(sql);
//		System.out.println("3.ok----------");
//		ps.setInt(1, dto.getId());
//
//		// 4. sql문 mysql서버로 전송
//		ResultSet rs = ps.executeQuery();
//		BbsDTO2 dto2 = new BbsDTO2();
//		if (rs.next()) { // true이면
//			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
//			// 내부적으로 한 행씩 가르키게 됨: 커서!
//			// 가방을 하나 만들어서
//			// 각 컬럼의 인덱스를 가지고 꺼내와서 가방에 넣는다.
//			dto2.setId(rs.getInt(1));
//			dto2.setTitle(rs.getString(2));
//			dto2.setContent(rs.getString(3));
//			dto2.setWriter(rs.getString(4));
//		}
		
	}
}
