package sist.com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sist.com.dao.MilyDao;
import sist.com.dto.EvalBookBean;

@RestController
public class MilyRestController {
	@Resource
	private MilyDao dao;
	
	/*@RequestMapping(value="myPostDelete.do")
	public List<EvalBookBean> myPostDelete(EvalBookBean bean, HttpSession session) {
		//System.out.println(bean);
		//dao.deleteMyPost(bean);
		session.setAttribute("id", bean.getId());
		//return "";
		//return dao.deleteMyPost(bean);
	}*/
}



