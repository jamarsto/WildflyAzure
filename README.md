#WildflyAzure

The WildflyAzure Project was setup to provide information on running real Java workloads in the Azure WebApp (Paas) environment.  It addresses specifically the following issues:
* Enabling continuous deployment to install Wildfly, allowing the use of the full JavaEE stack
* Enabling continuous deployment to update the Wildfly configuration files, allowing the use of container managed resources such as JDBC connection pools
* Enabling continuous deployment to place jar files in the Wildfly lib directory, allowing the use of container managed resources such as JDBC connection pools
* Enabling the relocation of the log directory to ensure it is where Azure expects it to be
* Enabling the passing of Connection Strings and other environment variables into the Java container, allowing standardisation and externalisation of configuration such as passwords
* Removing the dependency on Sticky Sessions by enabling Azure Redis Cache as the session store, allowing Round Robin load balancing
* Enabling Azure AD B2C as the Authentication Provider, allowing the use of Azure Active Directory