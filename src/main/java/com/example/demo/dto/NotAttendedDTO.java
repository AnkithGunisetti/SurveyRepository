package com.example.demo.dto;

public class NotAttendedDTO {

	private String reason;
	private String otherReason;
	public NotAttendedDTO() {
		// TODO Auto-generated constructor stub
	}
	public NotAttendedDTO(String reason, String otherReason) {
		super();
		this.reason = reason;
		this.otherReason = otherReason;
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
		return "NotAttended [reason=" + reason + ", otherReason=" + otherReason + "]";
	}

	
	
}
