package myRobot.pojo;

/**
 * AbstractOrder entity provides the base persistence definition of the Order
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOrder implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private Integer proId;
	private Integer number;
	private String ordernum;

	// Constructors

	/** default constructor */
	public AbstractOrder() {
	}

	/** full constructor */
	public AbstractOrder(String username, Integer proId, Integer number, String ordernum) {
		this.username = username;
		this.proId = proId;
		this.number = number;
		this.ordernum = ordernum;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getProId() {
		return this.proId;
	}

	public void setProId(Integer proId) {
		this.proId = proId;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getOrdernum() {
		return this.ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

}