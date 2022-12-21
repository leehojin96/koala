package boarder;

public class BoarderDTO {
	
	String userID;
	String title;
	String passward;
	String content ;
	String Wdate;
	
	public BoarderDTO() {
		// TODO Auto-generated constructor stub
	}

	public BoarderDTO(String userID, String title, String passward, String content, String wdate) {
		super();
		this.userID = userID;
		this.title = title;
		this.passward = passward;
		this.content = content;
		Wdate = wdate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPassward() {
		return passward;
	}

	public void setPassward(String passward) {
		this.passward = passward;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return Wdate;
	}

	public void setWdate(String wdate) {
		Wdate = wdate;
	}
	
	
	

}
