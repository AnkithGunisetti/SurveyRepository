package com.example.demo.bao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.example.demo.dto.AttendedDTO;
import com.example.demo.dto.NotAttendedDTO;

@Service
public class StoreData {

	private Integer UID = 101;
	private Map<Integer, AttendedDTO> attendedMap = new HashMap<Integer, AttendedDTO>();
	private Map<Integer, NotAttendedDTO> notAttendedMap = new HashMap<>();

	public void addAttendedData(AttendedDTO attended) {
		attendedMap.put(UID, attended);
		UID++;
	}

	public void addNotAttendedData(NotAttendedDTO notAttended) {
		notAttendedMap.put(UID, notAttended);
		UID++;
	}

	public Integer getUID() {
		return UID;
	}

	public Map<Integer, AttendedDTO> getAttendedMap() {
		return attendedMap;
	}

	public Map<Integer, NotAttendedDTO> getNotAttendedMap() {
		return notAttendedMap;
	}


}
