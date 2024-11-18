// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appconfiguration/v1beta1

package v1beta1

#ConfigurationInitParameters: {
	// An encryption block as defined below.
	encryption?: [...#EncryptionInitParameters] @go(Encryption,[]EncryptionInitParameters)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Whether local authentication methods is enabled. Defaults to true.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The Public Network Access setting of the App Configuration. Possible values are Enabled and Disabled.
	publicNetworkAccess?: null | string @go(PublicNetworkAccess,*string)

	// Whether Purge Protection is enabled. This field only works for standard sku. Defaults to false.
	purgeProtectionEnabled?: null | bool @go(PurgeProtectionEnabled,*bool)

	// The SKU name of the App Configuration. Possible values are free and standard. Defaults to free.
	sku?: null | string @go(Sku,*string)

	// The number of days that items should be retained for once soft-deleted. This field only works for standard sku. This value can be between 1 and 7 days. Defaults to 7. Changing this forces a new resource to be created.
	softDeleteRetentionDays?: null | float64 @go(SoftDeleteRetentionDays,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ConfigurationObservation: {
	// An encryption block as defined below.
	encryption?: [...#EncryptionObservation] @go(Encryption,[]EncryptionObservation)

	// The URL of the App Configuration.
	endpoint?: null | string @go(Endpoint,*string)

	// The App Configuration ID.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Whether local authentication methods is enabled. Defaults to true.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A primary_read_key block as defined below containing the primary read access key.
	primaryReadKey?: [...#PrimaryReadKeyObservation] @go(PrimaryReadKey,[]PrimaryReadKeyObservation)

	// A primary_write_key block as defined below containing the primary write access key.
	primaryWriteKey?: [...#PrimaryWriteKeyObservation] @go(PrimaryWriteKey,[]PrimaryWriteKeyObservation)

	// The Public Network Access setting of the App Configuration. Possible values are Enabled and Disabled.
	publicNetworkAccess?: null | string @go(PublicNetworkAccess,*string)

	// Whether Purge Protection is enabled. This field only works for standard sku. Defaults to false.
	purgeProtectionEnabled?: null | bool @go(PurgeProtectionEnabled,*bool)

	// The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A secondary_read_key block as defined below containing the secondary read access key.
	secondaryReadKey?: [...#SecondaryReadKeyObservation] @go(SecondaryReadKey,[]SecondaryReadKeyObservation)

	// A secondary_write_key block as defined below containing the secondary write access key.
	secondaryWriteKey?: [...#SecondaryWriteKeyObservation] @go(SecondaryWriteKey,[]SecondaryWriteKeyObservation)

	// The SKU name of the App Configuration. Possible values are free and standard. Defaults to free.
	sku?: null | string @go(Sku,*string)

	// The number of days that items should be retained for once soft-deleted. This field only works for standard sku. This value can be between 1 and 7 days. Defaults to 7. Changing this forces a new resource to be created.
	softDeleteRetentionDays?: null | float64 @go(SoftDeleteRetentionDays,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ConfigurationParameters: {
	// An encryption block as defined below.
	// +kubebuilder:validation:Optional
	encryption?: [...#EncryptionParameters] @go(Encryption,[]EncryptionParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Whether local authentication methods is enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The Public Network Access setting of the App Configuration. Possible values are Enabled and Disabled.
	// +kubebuilder:validation:Optional
	publicNetworkAccess?: null | string @go(PublicNetworkAccess,*string)

	// Whether Purge Protection is enabled. This field only works for standard sku. Defaults to false.
	// +kubebuilder:validation:Optional
	purgeProtectionEnabled?: null | bool @go(PurgeProtectionEnabled,*bool)

	// The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SKU name of the App Configuration. Possible values are free and standard. Defaults to free.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// The number of days that items should be retained for once soft-deleted. This field only works for standard sku. This value can be between 1 and 7 days. Defaults to 7. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	softDeleteRetentionDays?: null | float64 @go(SoftDeleteRetentionDays,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#EncryptionInitParameters: {
}

#EncryptionObservation: {
	// Specifies the client id of the identity which will be used to access key vault.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// Specifies the URI of the key vault key used to encrypt data.
	keyVaultKeyIdentifier?: null | string @go(KeyVaultKeyIdentifier,*string)
}

#EncryptionParameters: {
	// Specifies the client id of the identity which will be used to access key vault.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/managedidentity/v1beta1.UserAssignedIdentity
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("client_id",true)
	// +kubebuilder:validation:Optional
	identityClientId?: null | string @go(IdentityClientID,*string)

	// Specifies the URI of the key vault key used to encrypt data.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/keyvault/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	keyVaultKeyIdentifier?: null | string @go(KeyVaultKeyIdentifier,*string)
}

#IdentityInitParameters: {
	// A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#PrimaryReadKeyInitParameters: {
}

#PrimaryReadKeyObservation: {
	// The Connection String for this Access Key - comprising of the Endpoint, ID and Secret.
	connectionString?: null | string @go(ConnectionString,*string)

	// The ID of the Access Key.
	id?: null | string @go(ID,*string)

	// The Secret of the Access Key.
	secret?: null | string @go(Secret,*string)
}

#PrimaryReadKeyParameters: {
}

#PrimaryWriteKeyInitParameters: {
}

#PrimaryWriteKeyObservation: {
	// The Connection String for this Access Key - comprising of the Endpoint, ID and Secret.
	connectionString?: null | string @go(ConnectionString,*string)

	// The ID of the Access Key.
	id?: null | string @go(ID,*string)

	// The Secret of the Access Key.
	secret?: null | string @go(Secret,*string)
}

#PrimaryWriteKeyParameters: {
}

#SecondaryReadKeyInitParameters: {
}

#SecondaryReadKeyObservation: {
	// The Connection String for this Access Key - comprising of the Endpoint, ID and Secret.
	connectionString?: null | string @go(ConnectionString,*string)

	// The ID of the Access Key.
	id?: null | string @go(ID,*string)

	// The Secret of the Access Key.
	secret?: null | string @go(Secret,*string)
}

#SecondaryReadKeyParameters: {
}

#SecondaryWriteKeyInitParameters: {
}

#SecondaryWriteKeyObservation: {
	// The Connection String for this Access Key - comprising of the Endpoint, ID and Secret.
	connectionString?: null | string @go(ConnectionString,*string)

	// The ID of the Access Key.
	id?: null | string @go(ID,*string)

	// The Secret of the Access Key.
	secret?: null | string @go(Secret,*string)
}

#SecondaryWriteKeyParameters: {
}

// ConfigurationSpec defines the desired state of Configuration
#ConfigurationSpec: {
	forProvider: #ConfigurationParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ConfigurationInitParameters @go(InitProvider)
}

// ConfigurationStatus defines the observed state of Configuration.
#ConfigurationStatus: {
	atProvider?: #ConfigurationObservation @go(AtProvider)
}

// Configuration is the Schema for the Configurations API. Manages an Azure App Configuration.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Configuration: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #ConfigurationSpec   @go(Spec)
	status?: #ConfigurationStatus @go(Status)
}

// ConfigurationList contains a list of Configurations
#ConfigurationList: {
	items: [...#Configuration] @go(Items,[]Configuration)
}
