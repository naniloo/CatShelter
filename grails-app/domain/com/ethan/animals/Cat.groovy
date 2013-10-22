package com.ethan.animals

import com.ethan.common.CatBreed
import com.ethan.common.CatCoat

class Cat extends Animals {
	
	// *** Fields
	
	CatBreed breed
	String coat

	// *** Constraints

	static constraints = {
		breed(nullable:false, blank:false)
		coat(nullable:false, blank:false, inList:CatCoat.getList())
	}

	// *** toString

	String toString() {
		"Cat ${name} of type : ${breed.name} arrived on $arrivalDate"
	}
}
