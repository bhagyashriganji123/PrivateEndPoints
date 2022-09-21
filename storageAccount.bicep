@description('Azure region of the deployment')
param location string

resource storageresource 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'stbicepdev0010'

  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    accessTier: 'Hot'
  }
}
output name string = storageresource.name
