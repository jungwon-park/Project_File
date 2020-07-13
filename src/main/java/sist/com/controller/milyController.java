package sist.com.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.dao.MilyDao;
import sist.com.dto.AuthorBean;
import sist.com.dto.BookBean;
import sist.com.dto.EvalBookBean;
import sist.com.dto.EvaluationBean;
import sist.com.dto.MemberBean;
import sist.com.dto.PublisherBean;
import sist.com.dto.SearchBookBean;
import sist.com.dto.SubscribeListBean;

@Controller
public class milyController {
	@Resource
	private MilyDao dao;

	@RequestMapping(value = "home.do")
	public String index() {
		return "redirect:/jsp/index.jsp";
	}

	@RequestMapping(value = "idCheck.do")
	public String idcheckprocess(String id, String pw, HttpSession session) {
		session.setAttribute("id", id);
		return dao.idcheckProcess(id, pw) ? 
				"redirect:/jsp/index.jsp" : 
				"redirect:/jsp/signin.jsp";
	}

	@RequestMapping(value = "logoutProcess.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/jsp/index.jsp";
	}

	@RequestMapping(value = "insertmember.do")
	public String memberinit(MemberBean bean) {
		dao.insertmember(bean);
		return "redirect:/jsp/index.jsp";
	}

	@RequestMapping(value = "bookList.do")
	public String booklist(Model model, SearchBookBean bean) {
		model.addAttribute("list", dao.booklist(bean));
		return "/jsp/bookListView";
	}

	@RequestMapping(value = "searchBookList.do")
	public String searchBooklist(Model model,
			@RequestParam(value = "query", required = false, defaultValue = "noQuery") String query,
			@RequestParam(value = "data", required = false, defaultValue = "noData") String data) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("query", query);
		map.put("data", data);
		System.out.println("**********" + map);
		model.addAttribute("list", dao.selectSearchBook(map));
		return "/jsp/bookListView";
	}

	@RequestMapping(value = "readPage.do")
	public String readFunction(Model model, String code) {
		model.addAttribute("readList", dao.selectBookList(code));
		return "/jsp/read";
	}

	@RequestMapping(value = "evalPage.do")
	public String evalFunction(Model model, String code) {
		model.addAttribute("readList", dao.selectBookList(code));
		model.addAttribute("evalList", dao.selectEvalList(code));
		return "/jsp/eval";
	}

	@RequestMapping(value = "evalInsert.do")
	public String evalInsertFunction(EvaluationBean bean, String bookcode) {
		dao.InsertEval(bean);
		return "redirect:evalPage.do?code=" + bookcode;
	}

	@RequestMapping(value = "myPage.do")
	public String myPageInfo() {
		return "/billy/myPageMain";
	}

	@RequestMapping(value = "editInfoList.do")
	public String infoList(Model model, HttpSession session) {
		// dao
		String id = (String) (session.getAttribute("id"));
		model.addAttribute("info", dao.infoList(id));
		// System.out.println(dao.infoList(id));
		return "/billy/editInfo";
	}

	@RequestMapping(value = "updateInfo.do")
	public String updateInfo(MemberBean bean) {
		dao.updateInfo(bean);
		return "redirect:myPage.do";
	}

	@RequestMapping(value = "myPostList.do")
	public String myPostList(Model model, HttpSession session, String id) {
		if (id == null) {
			id = ((String) session.getAttribute("id"));
		}
		model.addAttribute("postlist", dao.searchmyEval(id));
		return "/billy/myPosts";
	}

	/*
	 * @RequestMapping(value="myPostDelete.do") public void myPpstDelete(String id,
	 * String bookcode, HttpSession session) { dao.deleteMyPost(bookcode);
	 * //session.setAttribute("bookcode", bookcode); //return ""; }
	 */
	@RequestMapping(value = "myPostDelete.do")
	public String deleteMyPost(EvalBookBean bean, HttpSession session) {
		session.setAttribute("id", bean.getId());
		System.out.println(bean);
		dao.deleteMyPost(bean);
		// model.addAttribute("postlist", dao.searchmyEval(id));
		return "redirect:myPage.do";
	}

	@RequestMapping(value = "updateMyPost.do")
	public String myPostUpdate(EvalBookBean bean) {
		dao.updateMyPost(bean);
		return "redirect:myPage.do";
	}

	@RequestMapping(value = "Buysub.do")
	public String BuyScribe(HttpSession session, Model model) {
		String id = (String) (session.getAttribute("id"));
		model.addAttribute("id", id);
		return "redirect:/jsp/subscribe.jsp";
	}

	@RequestMapping(value = "BuySubscribe.do")
	public String BuySubscribe(SubscribeListBean bean) {
		try {
			dao.insertSubscribeList(bean);
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:myPage.do";
		}
		return "redirect:myPage.do";
	}

	@RequestMapping(value = "searchSub.do")
	public String searchSublist(Model model,
			@RequestParam(value = "query", required = false, defaultValue = "noQuery") String query) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("query", query);
		System.out.println("**********" + map);
		model.addAttribute("Sublist", dao.selectSubscribe(map));
		return "/jsp/SubscribeListView";
	}

	@RequestMapping(value = "category.do")
	public String categoryFunction(Model model) {
		model.addAttribute("list", dao.categoryList());
		return "/jsp/categoryBtn";
	}

	@RequestMapping(value = "cateSelect.do")
	public String cateBookSelect(Model model, String cate) {
		model.addAttribute("list", dao.cateBookSelect(cate));
		return "/jsp/bookListView";
	}

	@RequestMapping(value = "WishListDelete.do")
	public String WishListDelete(String code, HttpSession session, Model model) {
		HashMap<String, String> map = new HashMap<String, String>();
		String id = (String) session.getAttribute("id");
		map.put("id", id);
		map.put("bookcode", code);
		dao.deleteWishList(map);
		model.addAttribute("list", dao.WishList(id));
		return "/jsp/wishCheck";
	}

	@RequestMapping(value = "WishListInsert.do")
	public String WishListInsert(String code, HttpSession session, Model model) {
		HashMap<String, String> map = new HashMap<String, String>();
		String id = (String) session.getAttribute("id");
		map.put("id", id);
		map.put("bookcode", code);

		if (id == null) {
			return "redirect:/jsp/signin.jsp";
		} else if (dao.selectWishList(map) != null) {
			return "redirect:/jsp/index.jsp";
		}
		dao.WishListInsert(map);
		model.addAttribute("list", dao.WishList(id));

		return "/jsp/wishCheck";
	}

	@RequestMapping(value = "totalPublisher.do")
	public String totalPublisher(Model model) {

		model.addAttribute("totalPublisher", dao.selectPublListAdmin());
		return "/billy/totalPublisher";
	}

	@RequestMapping(value = "totalAuthor.do")
	public String totalAuthor(Model model) {

		model.addAttribute("totalAuthor", dao.selectAuthorListAdmin());
		return "/billy/totalAuthor";
	}

	@RequestMapping(value = "userList.do")
	public String userList(Model model) {
		model.addAttribute("userList", dao.selectMemberListAdmin());
		return "/billy/userList";
	}

	@RequestMapping(value = "totalPost.do")
	public String totalPost(Model model) {
		model.addAttribute("evalBookList", dao.selectEvalBookListAdmin());
		return "/billy/totalPost";
	}

	@RequestMapping(value = "totalBook.do")
	public String totalBook(Model model) {
		model.addAttribute("totalBook", dao.selectBookListAdmin());
		return "/billy/totalBook";
	}

	@RequestMapping(value = "addBook.do")
	public String addBook(Model model) {
		return "/billy/addBook";
	}

	@RequestMapping(value = "addAuthorPubl.do")
	public String addAuthorPubl(Model model) {

		return "/billy/addAuthorPubl";
	}

	@RequestMapping(value = "checkPublisher.do")
	public String checkPublisherAdmin(PublisherBean bean, Model model) {

		if (dao.checkPublisherAdmin(bean.getPublishercode().toUpperCase()) != null
				|| dao.checkPublisherAdmin(bean.getPublishercode().toLowerCase()) != null) {
			System.out.println("기존 출판사가 있음 ");
			return "redirect:/billy/adminMain.jsp";
		} else {
			System.out.println("신규 출판사");
			dao.insertPublisherAdmin(bean);

		}
		return "redirect:/billy/adminMain.jsp";
	}

	@RequestMapping(value = "checkAuthor.do")
	public String checkAuthorAdmin(AuthorBean bean, Model model) {

		if (dao.checkPublisherAdmin(bean.getAuthorcode().toUpperCase()) != null
				|| dao.checkPublisherAdmin(bean.getAuthorcode().toLowerCase()) != null) {
			System.out.println("기존 작가가 있음 ");
			return "redirect:/billy/adminMain.jsp";
		} else {
			System.out.println("신규 작가");
			dao.insertAuthorAdmin(bean);

		}

		return "redirect:/billy/adminMain.jsp";
	}

	@RequestMapping(value = "checkBook.do")
	public String checkBookAdmin(BookBean bean) {

		dao.checkBookAdmin(bean);
		System.out.println(bean);
		return "redirect:/billy/adminMain.jsp";

	}

	@RequestMapping(value = "delBookAdmin.do")
	public String delBookAdmin(Model model, String bookcode) {
		dao.delBookAdmin(bookcode);
		return "redirect:/billy/adminMain.jsp";
	}

	@RequestMapping(value = "delPublisherAdmin.do")
	public String delPublisherAdmin(Model model, String publishercode) {
		dao.delBookAdminForPublisher(publishercode);
		dao.delPublisherAdmin(publishercode);
		return "redirect:/billy/adminMain.jsp";
	}

	@RequestMapping(value = "delAuthorAdmin.do")
	public String delAuthorAdmin(Model model, String authorcode) {
		dao.delBookAdminForAuthor(authorcode);
		dao.delAuthorAdmin(authorcode);
		return "redirect:/billy/adminMain.jsp";
	}

	@RequestMapping(value = "authorList.do")
	public String authorListFunction(Model model) {
		model.addAttribute("list", dao.authorList());
		return "/billy/authorOptionList";
	}

	@RequestMapping(value = "publisherList.do")
	public String publisherListFunction(Model model) {
		model.addAttribute("list", dao.publisherList());
		return "/billy/publisherOptionList";
	}

	@RequestMapping(value = "categoryListList.do")
	public String categoryListFunction(Model model) {
		model.addAttribute("list", dao.categoryList());
		return "/billy/categoryOptionList";
	}
}
