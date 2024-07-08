package com.example.demo.entities;


import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;

@Entity
public class EmployeeSurvey {
    

    @EmbeddedId
    private EmployeeSurveyKey employeeSurveyKey;
    
    @Column(nullable = true,length = 10)
    private String participated;
    
    @Column(nullable = true,length = 10)
    private String engaging;
    
    @Column(name = "continue_participate",nullable = true,length = 10)
    private String continueParticipate;
    
    @Column(nullable = true,length = 10)
    private String rating;

    @Column(nullable = true,length = 15)
    private String reason;
    
    @Column(name = "other_reason",length = 60,nullable = true)
    private String otherReason;


	public EmployeeSurvey() {
		super();
	}


	public EmployeeSurvey(EmployeeSurveyKey employeeSurveyKey, String participated, String engaging,
			String continueParticipate, String rating, String reason, String otherReason) {
		super();
		this.employeeSurveyKey = employeeSurveyKey;
		this.participated = participated;
		this.engaging = engaging;
		this.continueParticipate = continueParticipate;
		this.rating = rating;
		this.reason = reason;
		this.otherReason = otherReason;
	}


	public EmployeeSurveyKey getEmployeeSurveyKey() {
		return employeeSurveyKey;
	}


	public void setEmployeeSurveyKey(EmployeeSurveyKey employeeSurveyKey) {
		this.employeeSurveyKey = employeeSurveyKey;
	}


	public String getParticipated() {
		return participated;
	}


	public void setParticipated(String participated) {
		this.participated = participated;
	}


	public String getEngaging() {
		return engaging;
	}


	public void setEngaging(String engaging) {
		this.engaging = engaging;
	}


	public String getContinueParticipate() {
		return continueParticipate;
	}


	public void setContinueParticipate(String continueParticipate) {
		this.continueParticipate = continueParticipate;
	}


	public String getRating() {
		return rating;
	}


	public void setRating(String rating) {
		this.rating = rating;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	public String getOtherReason() {
		return otherReason;
	}


	public void setOtherReason(String otherReason) {
		this.otherReason = otherReason;
	}


	@Override
	public String toString() {
		return "EmployeeSurvey [employeeSurveyKey=" + employeeSurveyKey + ", participated=" + participated
				+ ", engaging=" + engaging + ", continueParticipate=" + continueParticipate + ", rating=" + rating
				+ ", reason=" + reason + ", otherReason=" + otherReason + "]";
	}

}

