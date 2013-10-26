package com.ethan.animals

import java.util.Date;

class Animals {
	
	// *** Fields
	
	String name
	Date arrivalDate  // When customer referred, most likely ReferralRequest created date.
	
	// Groovy Timestamps
	Date dateCreated
	Date lastUpdated

	// *** Constraints

	static constraints = {
		name(nullable:false, blank:false, unique:true)
		arrivalDate(nullable:false, blank:false)
	}

	// *** toString

	String toString() {
		"Animals ${name} arrived on ${arrivalDate}"
	}
}
