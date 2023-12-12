package com.backend.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	MovieService movieService;
	
	@RequestMapping("movie")
	public void insert(MovieVO movieVO) {
		//전처리한 다음에
		//db처리함.
		//view/movie.jsp로 이동함.
		System.out.println(movieVO);
		movieService.insert(movieVO);
	}
}
