import com.ethan.common.CatBreed;

class BootStrap {

    def init = { servletContext ->
		def breedsList =  [["Abyssinian","Egypt"],["Aegean cat","Greece"],["Australian mist","Australia"],["American Curl","United States"],
							["American Bobtail","United States"],["American Polydactyl","United States"],["American Shorthair","United States"],
							["American Wirehair","United States"],
							["Arabian Mau","Arabian Peninsula"],
							["Asian (cat)","Developed in the United Kingdom-Britain"],
							["Asian Semi-longhair","Great Britain"],
							["Balinese","United States"],
							["Bambino","United States"],
							["Bengal","United States"],
							["Birman","Burma"],
							["Bombay","United States"],
							["Brazilian Shorthair","Brazil"],
							["British Shorthair","United Kingdom"],
							["British Longhair","United Kingdom"],
							["Burmese","Burma and Thailand"],
							["Burmilla","United Kingdom"],
							["California Spangled Cat","United States"],
							["Chantilly/Tiffany","United States"],
							["Chartreux","France"],
							["Chausie","France"],
							["Cheetoh","United States"],
							["Colorpoint Shorthair",""],
							["Cornish Rex","United Kingdom"],
							["Cymric","Isle of Man"],
							["Cyprus cat","Cyprus"],
							["Devon Rex","England"],
							["Donskoy or Don Sphynx","Russia"],
							["Dragon Li","China"],
							["Dwelf",""],
							["Egyptian Mau","Egypt"],
							["European Shorthair","Sweden"],
							["Exotic Shorthair","United States"],
							["German Rex","East Germany"],
							["Havana Brown","United Kingdom"],
							["Highlander","America"],
							["Himalayan/Colorpoint Persian","United Kingdom"],
							["Japanese Bobtail","Japan"],
							["Javanese","Indonesia"],
							["Khao Manee","Thailand"],
							["Korat","Thailand"],
							["Kurilian Bobtail","Russia"],
							["LaPerm","United States"],
							["Maine Coon","United States"],
							["Manx","Isle of Man"],
							["Mekong bobtail","Russia"],
							["Minskin","United States"],
							["Munchkin","United States"],
							["Nebelung","United States"],
							["Napoleon"," ?"],
							["Norwegian Forest Cat","Norway"],
							["Ocicat","United States"],
							["Ojos Azules","United States"],
							["Oregon Rex","United States"],
							["Oriental Bicolor",""],
							["Oriental Shorthair","?"],
							["Oriental Longhair","?"],
							["Persian","Greater Iran"],
							["Peterbald","Russia"],
							["Pixie-bob","United States"],
							["Ragamuffin","United States"],
							["Ragdoll","United States"],
							["Russian Blue","Russia"],
							["Russian Black, White or Tabby","Australia"],
							["Savannah","United States"],
							["Scottish Fold","Scotland"],
							["Selkirk Rex","United States"],
							["Serengeti cat","United States"],
							["Serrade petit","France"],
							["Siamese","Thailand"],
							["Siberian","Russia"],
							["Singapura","Singapore"],
							["Snowshoe","United States"],
							["Sokoke","Kenya"],
							["Somali","Somalia"],
							["Sphynx","Canada"],
							["Swedish forest cat","Sweden"],
							["Thai","Thailand"],
							["Tonkinese","Canada"],
							["Toyger","United States"],
							["Turkish Angora","Turkey"],
							["Turkish Van","Turkey"],
							["Ukrainian Levkoy","Crimian province"],
							["York Chocolate Cat","United States"]]
		breedsList.each{ breed->
			def catBreed = CatBreed.findByName(breed[0])
			if(!catBreed){
				catBreed = new CatBreed(name:breed[0],country:breed[1])
				if(!catBreed.save(flush:true)){
					catBreed.errors.allErrors.each{log.error it}
				}
			}
			
		}

    }
    def destroy = {
    }
}
