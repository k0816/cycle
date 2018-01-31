package cycle.action;

	import java.sql.SQLException;
	import java.util.Map;

	import org.apache.struts2.interceptor.SessionAware;

	import cycle.dao.NicePartyDeleteDAO;
	import cycle.dto.LoginDTO;
	import com.opensymphony.xwork2.ActionSupport;

	public class NicePartyDeleteAction extends ActionSupport implements SessionAware {

		private String userId;
		private String partyId;

		private String message;
		private String errorMessage;

		public Map<String, Object> session;

		NicePartyDeleteDAO dao = new NicePartyDeleteDAO();

	    public String execute() throws SQLException {
		String result = ERROR;
		LoginDTO dto = (LoginDTO)session.get("loginUser");
		String userId = dto.getUserId();

		int count = dao.deleteNiceParty(userId, partyId);

		if(count > 0) {
			message="いいね！リストから削除いたしました。";
			result= SUCCESS;

		} else {
			errorMessage="削除に失敗いたしました。";
			result= ERROR;
		}

		return result;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPartyId() {
		return partyId;
	}

	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	}
