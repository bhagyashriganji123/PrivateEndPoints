@description('Azure region of the deployment')
param location string

@description('VNet name')
param vnetName string

@description('Address prefix')
param vnetAddressPrefix string

@description('Subnet 1 Prefix')
param subnet1Prefix string

@description('Subnet 1 Name')
param subnet1Name string

@description('Subnet 2 Prefix')
param subnet2Prefix string

@description('Subnet 2 Name')
param subnet2Name string

// module stgModule './storageAccount.bicep' = {
//   name: 'storageDeploy'
//   params: {
//     location: location
//   }
// }

module vnetModule './virtualNetwork.bicep' = {
  name: 'vnetDeploy'
  params: {
    location: location
    subnet1Name: subnet1Name
    subnet1Prefix: subnet1Prefix
    subnet2Name: subnet2Name
    subnet2Prefix: subnet2Prefix
    vnetAddressPrefix: vnetAddressPrefix
    vnetName: vnetName
  }

}
