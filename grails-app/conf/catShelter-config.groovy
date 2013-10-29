/**
* ext-config.groovy.default
* 
* This is an optional configuration file that is used to override settings in the grails-app/conf/*.groovy files. To use this,
* copy this file to a configuration directory  renaming it appropriately (e.g. /catShelter-config.groovy) and then provide a 
* JVM -D argument in the start up of the application as shown:
*
*	grails -Dtdstm.config.location=../catShelter-config.groovy run-app
*	java -Dtdstm.config.location=../catShelter-config.groovy ...
*
**/


// Database Properties
environments {
	development {
		dataSource {
			driverClassName = "com.mysql.jdbc.Driver"
			url = "jdbc:mysql://localhost/cat_shelter?autoReconnect=true"
			username = "root"
			password = "root"
			dbCreate = "update"
		}
	}
	production {
		dataSource {
			driverClassName = "com.mysql.jdbc.Driver"
			url = "jdbc:mysql://<host>/cat_shelter?autoReconnect=true"
			username = ""
			password = ""
			dbCreate = ""
		}
	}
}

