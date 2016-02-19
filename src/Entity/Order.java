package Entity;

public class Order {
	private String orderid;
	private String bookid;
	private String bookname;
	private String bookpic;
	private String userid;
	private String amount;
	private String orderstatus;
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	private String addtime;
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBookpic() {
		return bookpic;
	}
	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}
	private String chainprice;
	public String getChainprice() {
		return chainprice;
	}
	public void setChainprice(String chainprice) {
		this.chainprice = chainprice;
	}
	private String shoppingnum;
	
	
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getShoppingnum() {
		return shoppingnum;
	}
	public void setShoppingnum(String shoppingnum) {
		this.shoppingnum = shoppingnum;
	}
	
	
}
