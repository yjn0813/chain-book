/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class UpdateForm extends ActionForm {
	/*
	 * Generated fields
	 */
	private int bookamount;
	public int getBookamount() {
		return bookamount;
	}
	public void setBookamount(int bookamount) {
		this.bookamount = bookamount;
	}

	/** author property */
	private String author;

	/** press property */
	private String press;
	private String bookpic;

	public String getBookpic() {
		return bookpic;
	}

	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}

	/** bookid property */
	private String bookid;
	private String categoryid;
	private String descript;

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}

	/** price property */
	private String price;

	/** bookname property */
	private String bookname;

	/** categoryname property */
	private String categoryname;

	/** chainprice property */
	private String chainprice;

	/*
	 * Generated Methods
	 */

	/**
	 * Method validate
	 * 
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * Method reset
	 * 
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/**
	 * Returns the author.
	 * 
	 * @return String
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * Set the author.
	 * 
	 * @param author
	 *            The author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/**
	 * Returns the press.
	 * 
	 * @return String
	 */
	public String getPress() {
		return press;
	}

	/**
	 * Set the press.
	 * 
	 * @param press
	 *            The press to set
	 */
	public void setPress(String press) {
		this.press = press;
	}

	/**
	 * Returns the bookid.
	 * 
	 * @return String
	 */
	public String getBookid() {
		return bookid;
	}

	/**
	 * Set the bookid.
	 * 
	 * @param bookid
	 *            The bookid to set
	 */
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}

	/**
	 * Returns the price.
	 * 
	 * @return String
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * Set the price.
	 * 
	 * @param price
	 *            The price to set
	 */
	public void setPrice(String price) {
		this.price = price;
	}

	/**
	 * Returns the bookname.
	 * 
	 * @return String
	 */
	public String getBookname() {
		return bookname;
	}

	/**
	 * Set the bookname.
	 * 
	 * @param bookname
	 *            The bookname to set
	 */
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	/**
	 * Returns the categoryname.
	 * 
	 * @return String
	 */
	public String getCategoryname() {
		return categoryname;
	}

	/**
	 * Set the categoryname.
	 * 
	 * @param categoryname
	 *            The categoryname to set
	 */
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	/**
	 * Returns the chainprice.
	 * 
	 * @return String
	 */
	public String getChainprice() {
		return chainprice;
	}
	private FormFile file;
	public FormFile getFile() {
		return file;
	}

	public void setFile(FormFile file) {
		this.file = file;
	}

	/**
	 * Set the chainprice.
	 * 
	 * @param chainprice
	 *            The chainprice to set
	 */
	public void setChainprice(String chainprice) {
		this.chainprice = chainprice;
	}
}