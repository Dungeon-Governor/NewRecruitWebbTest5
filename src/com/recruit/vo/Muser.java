package com.recruit.vo;

public class Muser {
	

		private Integer id;
		private String username;
		private String qq;
	    private String profession; 
	    private String phone;
	    private String team;
	    
	    public Muser() {}
	    
		public Muser(Integer id, String username, String qq, String profession, String phone, String team) {
			super();
			this.id = id;
			this.username = username;
			this.qq = qq;
			this.profession = profession;
			this.phone = phone;
			this.team = team;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getQq() {
			return qq;
		}

		public void setQq(String qq) {
			this.qq = qq;
		}

		public String getProfession() {
			return profession;
		}

		public void setProfession(String profession) {
			this.profession = profession;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getTeam() {
			return team;
		}

		public void setTeam(String team) {
			this.team = team;
		}

	

	    

	   
	    
	  
}
