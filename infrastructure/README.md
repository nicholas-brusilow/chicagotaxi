# Infrastructure

### Azure ARM templates defining the Azure resources to be created

*For all of these, you will need a resource group to pass in as a parameter*

*For the purposes of these examples, I am using a resource group called chicagotaxi-rg. Your name may be different*

*All of the commands given here assume the use of Azure CLI*

These files will be explained in the order that they are intended to be deployed.

Before deploying an ARM template with `az deployment group create ...`, it is suggested that you first validate the ARM template - that it won't throw an error - with the command `az deployment group validate ...` followed by the same parameters as `create`

**Creating the SQL Server and Database*

The ARM template to create these two resources is called sql_server.json. Run the following command:

`az deployment group create -g [your resource group name] --template-file sql_server.json`

When you run this, you'll need to input the region (I personally use `canadaeast`, because for some reason US regions throw errors), your administrator username and password.
