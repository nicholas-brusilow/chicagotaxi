@description('The name of the SQL logical server.')
param serverName string = 'chicagotaxi-sql-server'

@description('The name of the SQL Database.')
param sqlDBName string = 'chicagotaxi-sql-db'

@description('Location for all resources.')
param location string

@description('The administrator username of the SQL logical server.')
param administratorLogin string

@description('The administrator password of the SQL logical server.')
@secure()
param administratorLoginPassword string

resource server 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: serverName
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
  }
}

resource serverName_sqlDB 'Microsoft.Sql/servers/databases@2022-05-01-preview' = {
  parent: server
  name: '${sqlDBName}'
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
