#WildflyAzure

The WildflyAzure Project was setup to provide information on running real Java workloads in the Azure WebApp (Paas) environment.  It addresses specifically the following issues:
* Enabling continuous deployment to install Wildfly, allowing the use of the full JavaEE stack
* Enabling continuous deployment to update the Wildfly configuration files, allowing the use of container managed resources such as JDBC connection pools
* Enabling continuous deployment to place jar files in the Wildfly lib directory, allowing the use of container managed resources such as JDBC connection pools
* Enabling the relocation of the log directory to ensure it is where Azure expects it to be
* Enabling the passing of Connection Strings and other environment variables into the Java container, allowing standardisation and externalisation of configuration such as passwords
* Removing the dependency on Sticky Sessions by enabling Azure Redis Cache as the session store, allowing Round Robin load balancing
* Enabling Azure AD B2C as the Authentication Provider, allowing the use of Azure Active Directory

Configuration of the Azure Authentication Filter is picked up from system environment variables:
* **AAD_OIDC_POLICY** (The policy to use in Open ID Connect - Typically this is a "sign-up or sign-in" type policy)
* **AAD_REDIRECT_URL** (The URL to redirect to after obtaining a token)
* **AAD_APPLICATION_ID** (The GUID of the application you have registered in Azure AD B2C)
* **AAD_TENANT** (The Azure AD B2C tenant to use)
* **AAD_PRINCIPAL_ID** (The GUID of the principal used to query the graph API)
* **AAD_PRINCIPAL_SECRET** (The password for the principal used to query the graph API)

Configuration of the Spring Redis Cache Session Manager Filter is picked up from system environment variables:
* **REDIS_HOST** (The FQDN of the Redis Server)
* **REDIS_PORT** (The port the Redis Server is listening on)
* **REDIS_PASSWORD** (The password used to access the Redis Server)

You will need to configure a JTA and a non-JTA data source for the application.
You will need to create a table called Movie to match the Movie class and populate a few rows with test data