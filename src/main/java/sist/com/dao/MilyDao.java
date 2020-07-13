package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sist.com.dto.AdminBookBean;
import sist.com.dto.AudioBookBean;
import sist.com.dto.AuthorBean;
import sist.com.dto.BookBean;
import sist.com.dto.BookWishListJoinBean;
import sist.com.dto.CategoryBean;
import sist.com.dto.EvalBookBean;
import sist.com.dto.EvaluationBean;
import sist.com.dto.InsertBookBean;
import sist.com.dto.MemberBean;
import sist.com.dto.PublisherBean;
import sist.com.dto.RentalBean;
import sist.com.dto.SearchBookBean;
import sist.com.dto.SubscribeBean;
import sist.com.dto.SubscribeListBean;
import sist.com.dto.WishListBean;

@Component
public class MilyDao extends SqlSessionDaoSupport {

	@Resource
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}

	public boolean idcheckProcess(String id, String pw) {
		String dbPass = this.getSqlSession().selectOne("idcheckProcess", id);
		return dbPass != null && dbPass.equals(pw);
	}
	
	public void insertmember(MemberBean bean) {
		this.getSqlSession().insert("insertmember", bean);
	}
	
	
	public List<SearchBookBean> booklist(SearchBookBean bean) {
		return this.getSqlSession().selectList("booklist", bean);
	}

	public List<SearchBookBean> selectSearchBook(HashMap<String, String> map) {
		return this.getSqlSession().selectList("selectSearchBook", map);
	}

	public List<SearchBookBean> selectBookList(String code) {
		return this.getSqlSession().selectList("selectBookList", code);
	}

	public List<SearchBookBean> selectEvalList(String code) {
		return this.getSqlSession().selectList("evalList", code);
	}

	public void InsertEval(EvaluationBean bean) {
		this.getSqlSession().insert("insertEval", bean);
	}

	public Object infoList(String id) {
		return this.getSqlSession().selectOne("infoList", id);
	}

	public void updateInfo(MemberBean bean) {
		this.getSqlSession().update("updateInfo", bean);
	}

	public List<EvalBookBean> searchmyEval(String id) {
		return this.getSqlSession().selectList("searchmyEval", id);
	}

	public void deleteMyPost(EvalBookBean bean) {
		this.getSqlSession().delete("deleteMyPost", bean);
	}

	public void updateMyPost(EvalBookBean bean) {
		this.getSqlSession().update("updateMyPost", bean);
	}

	public List<SubscribeBean> selectSubscribe(HashMap<String, String> map) {
		return this.getSqlSession().selectList("selectSubscribe", map);
	}

	public void insertSubscribeList(SubscribeListBean bean) {
		this.getSqlSession().insert("insertSubscribeList", bean);
	}

	///// YJ
	public List<PublisherBean> selectPublListAdmin() {
		return this.getSqlSession().selectList("selectPublListAdmin");
	}

	public List<AuthorBean> selectAuthorListAdmin() {

		return this.getSqlSession().selectList("selectAuthorListAdmin");
	}

	public List<MemberBean> selectMemberListAdmin() {

		return this.getSqlSession().selectList("selectMemberListAdmin");

	}

	public List<EvalBookBean> selectEvalBookListAdmin() {
		return this.getSqlSession().selectList("selectEvalBookListAdmin");
	}

	public List<AdminBookBean> selectBookListAdmin() {

		return this.getSqlSession().selectList("selectBookListAdmin");

	}

	public List<AuthorBean> authorList() {

		return this.getSqlSession().selectList("authorList");

	}

	public List<PublisherBean> publisherList() {

		return this.getSqlSession().selectList("publisherList");

	}

	public List<CategoryBean> categoryList() {

		return this.getSqlSession().selectList("categoryList");

	}

	public List<SearchBookBean> cateBookSelect(String cate) {

		return this.getSqlSession().selectList("cateBookSelect", cate);

	}

	public List<BookWishListJoinBean> WishList(String id) {

		return this.getSqlSession().selectList("WishList", id);

	}

	public void WishListInsert(HashMap<String, String> map) {

		this.getSqlSession().insert("WishListInsert", map);

	}

	public void deleteWishList(HashMap<String, String> map) {

		this.getSqlSession().delete("deleteWishList", map);

	}

	public String selectWishList(HashMap<String, String> map) {

		return this.getSqlSession().selectOne("selectWishList", map);

	}

	public PublisherBean checkPublisherAdmin(String publishercode) {

		return this.getSqlSession().selectOne("checkPublisherAdmin", publishercode);
	}

	public void insertPublisherAdmin(PublisherBean bean) {
		this.getSqlSession().insert("insertPublisherAdmin", bean);
	}

	public AuthorBean checkAuthorAdmin(String authorcode) {

		return this.getSqlSession().selectOne("checkAuthorAdmin", authorcode);
	}

	public void insertAuthorAdmin(AuthorBean bean) {
		this.getSqlSession().insert("insertAuthorAdmin", bean);
	}

	public void delBookAdmin(String bookcode) {
		this.getSqlSession().delete("delBookAdmin", bookcode);
	}

	public void delPublisherAdmin(String publishercode) {
		this.getSqlSession().delete("delPublisherAdmin", publishercode);
	}

	public void delAuthorAdmin(String authorcode) {
		this.getSqlSession().delete("delAuthorAdmin", authorcode);
	}
	public void delBookAdminForAuthor(String authorcode) {
		this.getSqlSession().delete("delBookAdminForAuthor", authorcode);
	}
	public void delBookAdminForPublisher(String publishercode) {
		this.getSqlSession().delete("delBookAdminForPublisher", publishercode);
	}
	public void delBookAdminForCategory(String categorycode) {
		this.getSqlSession().delete("delBookAdminForCategory", categorycode);
	}

	public void delCategoryAdmin(String categorycode) {
		this.getSqlSession().delete("delCategoryAdmin", categorycode);
	}

	public void checkBookAdmin(BookBean bean) {
		this.getSqlSession().insert("checkBookAdmin", bean);
	}

}
