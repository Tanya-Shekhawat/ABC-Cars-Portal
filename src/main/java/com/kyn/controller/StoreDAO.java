package com.kyn.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class StoreDAO {
	
	List<Store> store = new ArrayList<Store>();
	
	public Store saveStore(Store s) {
		
	store.add(s);
	return s;
	}	
	
	public List<Store> showAllStore(){
		return this.store; 
		
	}
   
}
