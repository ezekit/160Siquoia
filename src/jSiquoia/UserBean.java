package jSiquoia;

//SELF EXPLANITORY
public class UserBean implements java.io.Serializable {

	private String name;
	private String email;
	private String password;
	private String login_date;
	private int token;
	private int accesslevel;
	private int score;
	private int rank;
	private String currQset;
	private int catID;
	public boolean valid;

	public String getName() {
		return name;
	}

	public void setName(String newName) {
		name = newName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String newPassword) {
		password = newPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String newEmail) {
		email = newEmail;
	}

	public int getToken() {
		return token;
	}

	public void setToken(int newToken) {
		token = newToken;
	}

	public int getLevel() {
		return accesslevel;
	}

	public void setLevel(int newLevel) {
		accesslevel = newLevel;
	}

	public String getDate() {
		return login_date;
	}

	public void setDate(String newDate) {
		login_date = newDate;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int newScore) {
		score = newScore;
	}
	
	public int  getRank() {
		return rank;
	}

	public void setRank(int newRank) {
		rank = newRank;
	}
	
	public String getCurrQSet() {
		return currQset;
	}

	public void setCurrQSet(String newCurrQset) {
		currQset = newCurrQset;
	}
	
	public String getCatID() {
		return currQset;
	}

	public void setCatID(int newCatID) {
		catID = newCatID;
	}


	//SETS VALIDATION FOR BEAN OBJECT
	public void setValid(boolean newValid) {
		valid = newValid;
	}	
	
	public boolean isValid() {
		return valid;
	}
}
