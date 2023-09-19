package com.kyn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreService {
	
	@Autowired
	private StoreDAO sd;
	
	public Store saveStore(Store s) {
		return sd.saveStore(s);
	}
	
	public List<Store> showAllStore(){
		return sd.showAllStore();
		
	}

}
