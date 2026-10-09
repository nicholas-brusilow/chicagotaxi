# Infrastructure

### Azure ARM templates defining the Azure resources to be created

*For all of these, you will need a resource group to pass in as a parameter*

*For the purposes of these examples, I am using a resource group called chicagotaxi-rg. Your name may be different*

*All of the commands given here assume the use of Azure CLI*

These files will be explained in the order that they are intended to be deployed.

Before deploying an ARM template with `az deployment group create ...`, it is suggested that you first validate the ARM template - that it won't throw an error - with the command `az deployment group validate ...` followed by the same parameters as `create`

**Creating the SQL Server, Database, and Blob**

This project makes use of a Microsoft SQL server for storing the data. Thus, the first resources to be deployed are the SQL server itself, as well as the SQL database.

Please note, however, that in order to provision a Microsoft SQL server, a Storage Blob Account is needed. This is because a Microsoft SQL server needs a container within a blob store to save the results of a vulnerability scan/assessment.

Thus, the *actual* first resource you must create is the blob storage.

The template for this is `create_blob.json`. This creates the blob, as well as the necessary container within it for the vulnerability scan results. The container is called `va-scan-results`

The command to provision it is `az deployment group create --name chicagotaxiblob -g chicagotaxi-rg --template-file create_blob.json`
