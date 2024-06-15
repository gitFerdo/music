package userRegister.Model;

public class B_Musicplanner {
		private int prod_id;
	 	private String prod_name;
	    private String prod_cnt;
	    private String prod_email;
	    private String prod_jroll;
    
	 	public B_Musicplanner(int prod_id, String prod_name, String prod_cnt, String prod_email, String prod_jroll) {
		this.prod_id = prod_id;
		this.prod_name = prod_name;
		this.prod_cnt = prod_cnt;
		this.prod_email = prod_email;
		this.prod_jroll = prod_jroll;
	 	}

		public int getprod_id() {
			return prod_id;
		}

		public String getprod_name() {
			return prod_name;
		}

		public String getprod_cnt() {
			return prod_cnt;
		}

		public String getprod_email() {
			return prod_email;
		}

		public String getprod_jroll() {
			return prod_jroll;
		}

}
