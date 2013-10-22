package com.ethan.common

import java.util.Date;

class CatBreed {
	
	// *** Fields
	
	String name
	String country 
	
	// Groovy Timestamps
	Date dateCreated
	Date lastUpdated

	// *** Constraints

	static constraints = {
		name(nullable:false, blank:false)
		country(nullable:true, blank:true)
	}

	// *** toString

	String toString() {
		name
	}
}
