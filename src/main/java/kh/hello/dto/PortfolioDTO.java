package kh.hello.dto;

import java.sql.Timestamp;

public class PortfolioDTO {
	private int seq;
	private String portfolioTitle;
	private Timestamp startDate;
	private Timestamp endDate;
	private String purpose;
	private String environment;
	private String allFunction;
	private String dbUnitPlan;
	private String role;
	private String contribution;
	private String image1;
	private String function1;
	private String explanation1;
	private String image2;
	private String function2;
	private String explanation2;
	private String image3;
	private String function3;
	private String explanation3;
	public PortfolioDTO() {
		super();
	}
	public PortfolioDTO(int seq, String portfolioTitle, Timestamp startDate, Timestamp endDate, String purpose,
			String environment, String allFunction, String dbUnitPlan, String role, String contribution, String image1,
			String function1, String explanation1, String image2, String function2, String explanation2, String image3,
			String function3, String explanation3) {
		super();
		this.seq = seq;
		this.portfolioTitle = portfolioTitle;
		this.startDate = startDate;
		this.endDate = endDate;
		this.purpose = purpose;
		this.environment = environment;
		this.allFunction = allFunction;
		this.dbUnitPlan = dbUnitPlan;
		this.role = role;
		this.contribution = contribution;
		this.image1 = image1;
		this.function1 = function1;
		this.explanation1 = explanation1;
		this.image2 = image2;
		this.function2 = function2;
		this.explanation2 = explanation2;
		this.image3 = image3;
		this.function3 = function3;
		this.explanation3 = explanation3;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getPortfolioTitle() {
		return portfolioTitle;
	}
	public void setPortfolioTitle(String portfolioTitle) {
		this.portfolioTitle = portfolioTitle;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getEnvironment() {
		return environment;
	}
	public void setEnvironment(String environment) {
		this.environment = environment;
	}
	public String getAllFunction() {
		return allFunction;
	}
	public void setAllFunction(String allFunction) {
		this.allFunction = allFunction;
	}
	public String getDbUnitPlan() {
		return dbUnitPlan;
	}
	public void setDbUnitPlan(String dbUnitPlan) {
		this.dbUnitPlan = dbUnitPlan;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getContribution() {
		return contribution;
	}
	public void setContribution(String contribution) {
		this.contribution = contribution;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getFunction1() {
		return function1;
	}
	public void setFunction1(String function1) {
		this.function1 = function1;
	}
	public String getExplanation1() {
		return explanation1;
	}
	public void setExplanation1(String explanation1) {
		this.explanation1 = explanation1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getFunction2() {
		return function2;
	}
	public void setFunction2(String function2) {
		this.function2 = function2;
	}
	public String getExplanation2() {
		return explanation2;
	}
	public void setExplanation2(String explanation2) {
		this.explanation2 = explanation2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getFunction3() {
		return function3;
	}
	public void setFunction3(String function3) {
		this.function3 = function3;
	}
	public String getExplanation3() {
		return explanation3;
	}
	public void setExplanation3(String explanation3) {
		this.explanation3 = explanation3;
	}
	
}