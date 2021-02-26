package com.recruit.vo;

public class Team {
	

		private Integer id;
		private String username;
		private String qq;
	    private String profession; 
	    private String phone;
	    private String direction;
	    
	    public Team() {}

	

		public Team(Integer id, String username, String qq, String profession, String phone, String direction) {
			super();
			this.id = id;
			this.username = username;
			this.qq = qq;
			this.profession = profession;
			this.phone = phone;
			this.direction = direction;
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



		public String getDirection() {
			return direction;
		}



		public void setDirection(String direction) {
			this.direction = direction;
		}
	    
		
	    

	   
	    
	  
}
