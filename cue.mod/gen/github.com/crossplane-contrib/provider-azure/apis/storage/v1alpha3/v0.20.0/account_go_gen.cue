// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-azure/apis/storage/v1alpha3

package v1alpha3

// CustomDomain specifies the custom domain assigned to this storage account.
#CustomDomain: {
	// Name - custom domain name assigned to the storage account. Name is the
	// CNAME source.
	// +optional
	name?: string @go(Name)

	// UseSubDomainName - Indicates whether indirect CNAME validation is
	// enabled.
	// +optional
	useSubDomainName?: bool @go(UseSubDomainName)
}

// EnabledEncryptionServices a list of services that support encryption.
#EnabledEncryptionServices: {
	// Blob - The encryption function of the blob storage service.
	blob?: bool @go(Blob)

	// File - The encryption function of the file storage service.
	file?: bool @go(File)
}

// Encryption the encryption settings on the storage account.
#Encryption: {
	// Services - List of services which support encryption.
	services?: null | #EnabledEncryptionServices @go(Services,*EnabledEncryptionServices)

	// KeyVaultProperties - Properties provided by key vault.
	keyvaultproperties?: null | #KeyVaultProperties @go(KeyVaultProperties,*KeyVaultProperties)
}

// Endpoints the URIs that are used to perform a retrieval of a public blob, queue, or table object.
#Endpoints: {
	// Blob - the blob endpoint.
	blob?: string @go(Blob)

	// Queue - the queue endpoint.
	queue?: string @go(Queue)

	// Table - the table endpoint.
	table?: string @go(Table)

	// File - the file endpoint.
	file?: string @go(File)
}

// Identity identity for the resource.
#Identity: {
	// PrincipalID - The principal ID of resource identity.
	principalId?: string @go(PrincipalID)

	// TenantID - The tenant ID of resource.
	tenantId?: string @go(TenantID)

	// Type - The identity type.
	type?: string @go(Type)
}

// IPRule IP rule with specific IP or IP range in CIDR format.
#IPRule: {
	// IPAddressOrRange - Specifies the IP or IP range in CIDR format.
	// Only IPV4 address is allowed.
	value?: string @go(IPAddressOrRange)
}

// KeyVaultProperties properties of key vault.
#KeyVaultProperties: {
	// KeyName - The name of KeyVault key.
	keyname?: string @go(KeyName)

	// KeyVersion - The version of KeyVault key.
	keyversion?: string @go(KeyVersion)

	// KeyVaultURI - The Uri of KeyVault.
	keyvaulturi?: string @go(KeyVaultURI)
}

// NetworkRuleSet network rule set
#NetworkRuleSet: {
	// VirtualNetworkRules - Sets the virtual network rules
	virtualNetworkRules?: [...#VirtualNetworkRule] @go(VirtualNetworkRules,[]VirtualNetworkRule)

	// IPRules - Sets the IP ACL rules
	ipRules?: [...#IPRule] @go(IPRules,[]IPRule)
}

// skuCapability the capability information in the specified sku, including file
// encryption, network acls, change notification, etc.
_#skuCapability: {
	// Name - The name of capability, The capability information in the specified sku,
	// including file encryption, network acls, change notification, etc.
	name?: string @go(Name)

	// Value - A string value to indicate states of given capability.
	// Possibly 'true' or 'false'.
	// +kubebuilder:validation:Enum=true;false
	value?: string @go(Value)
}

// Sku of an Azure Blob Storage Account.
#Sku: {
	// Capabilities - The capability information in the specified sku, including
	// file encryption, network acls, change notification, etc.
	capabilities?: [..._#skuCapability] @go(Capabilities,[]skuCapability)

	// Locations - The set of locations that the Sku is available.
	// This will be supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.).
	locations?: [...string] @go(Locations,[]string)

	// ResourceType - The type of the resource, usually it is 'storageAccounts'.
	resourceType?: string @go(ResourceType)
}

// VirtualNetworkRule virtual Network rule.
#VirtualNetworkRule: {
	// VirtualNetworkResourceID - Resource ID of a subnet,
	// for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
	id?: string @go(VirtualNetworkResourceID)
}

// StorageAccountSpecProperties the parameters used to create the storage account.
#StorageAccountSpecProperties: {
	// CustomDomain - User domain assigned to the storage account.
	// Name is the CNAME source. Only one custom domain is supported per storage account at this time.
	// to clear the existing custom domain, use an empty string for the custom domain name property.
	customDomain?: null | #CustomDomain @go(CustomDomain,*CustomDomain)

	// EnableHTTPSTrafficOnly - Allows https traffic only to storage service if sets to true.
	supportsHttpsTrafficOnly?: bool @go(EnableHTTPSTrafficOnly)

	// Encryption - Provides the encryption settings on the account.
	// If left unspecified the account encryption settings will remain the same.
	// The default setting is unencrypted.
	encryption?: null | #Encryption @go(Encryption,*Encryption)

	// NetworkRuleSet - Network rule set
	networkAcls?: null | #NetworkRuleSet @go(NetworkRuleSet,*NetworkRuleSet)
}

// StorageAccountStatusProperties represent the observed state of an Account.
#StorageAccountStatusProperties: {
	// PrimaryEndpoints - the URLs that are used to perform a retrieval of a public blob, queue, or table object.
	// Note that Standard_ZRS and Premium_LRS accounts only return the blob endpoint.
	primaryEndpoints?: null | #Endpoints @go(PrimaryEndpoints,*Endpoints)

	// PrimaryLocation - the location of the primary data center for the storage account.
	primaryLocation?: string @go(PrimaryLocation)

	// SecondaryEndpoints - the URLs that are used to perform a retrieval of a
	// public blob, queue, or table object from the secondary location of the
	// storage account. Only available if the Sku name is Standard_RAGRS.
	secondaryEndpoints?: null | #Endpoints @go(SecondaryEndpoints,*Endpoints)

	// SecondaryLocation - the location of the geo-replicated secondary for the
	// storage account. Only available if the accountType is Standard_GRS or Standard_RAGRS.
	secondaryLocation?: string @go(SecondaryLocation)
}

// A StorageAccountSpec defines the desired state of an Azure Blob Storage
// account.
#StorageAccountSpec: {
	// Identity - The identity of the resource.
	// +optional
	identity?: null | #Identity @go(Identity,*Identity)

	// Location - The location of the resource. This will be one of the
	// supported and registered Azure Geo Regions (e.g. West US, East US,
	// Southeast Asia, etc.).
	location: string @go(Location)

	// Sku of the storage account.
	sku?: null | #Sku @go(Sku,*Sku)

	// StorageAccountSpecProperties - The parameters used to create the storage
	// account.
	// +optional
	properties?: null | #StorageAccountSpecProperties @go(StorageAccountSpecProperties,*StorageAccountSpecProperties)

	// Tags - A list of key value pairs that describe the resource. These tags
	// can be used for viewing and grouping this resource (across resource
	// groups). A maximum of 15 tags can be provided for a resource. Each tag
	// must have a key with a length no greater than 128 characters and a value
	// with a length no greater than 256 characters.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// A StorageAccountStatus represents the observed status of an Account.
#StorageAccountStatus: {
	// ID of this Account.
	id?: string @go(ID)

	// Name of this Account.
	name?: string @go(Name)

	// Type of this Account.
	type?: string @go(Type)

	// Properties of this Account.
	properties?: null | #StorageAccountStatusProperties @go(StorageAccountStatusProperties,*StorageAccountStatusProperties)
}
