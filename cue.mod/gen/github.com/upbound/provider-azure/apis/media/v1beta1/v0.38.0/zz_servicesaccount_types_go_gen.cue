// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/media/v1beta1

package v1beta1

#EncryptionInitParameters: {
	// Specifies the URI of the Key Vault Key used to encrypt data. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey).
	keyVaultKeyIdentifier?: null | string @go(KeyVaultKeyIdentifier,*string)

	// A managed_identity block as defined below.
	managedIdentity?: [...#ManagedIdentityInitParameters] @go(ManagedIdentity,[]ManagedIdentityInitParameters)

	// Specifies the type of key used to encrypt the account data. Possible values are SystemKey and CustomerKey.
	type?: null | string @go(Type,*string)
}

#EncryptionObservation: {
	// The current key used to encrypt the Media Services Account, including the key version.
	currentKeyIdentifier?: null | string @go(CurrentKeyIdentifier,*string)

	// Specifies the URI of the Key Vault Key used to encrypt data. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey).
	keyVaultKeyIdentifier?: null | string @go(KeyVaultKeyIdentifier,*string)

	// A managed_identity block as defined below.
	managedIdentity?: [...#ManagedIdentityObservation] @go(ManagedIdentity,[]ManagedIdentityObservation)

	// Specifies the type of key used to encrypt the account data. Possible values are SystemKey and CustomerKey.
	type?: null | string @go(Type,*string)
}

#EncryptionParameters: {
	// Specifies the URI of the Key Vault Key used to encrypt data. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey).
	// +kubebuilder:validation:Optional
	keyVaultKeyIdentifier?: null | string @go(KeyVaultKeyIdentifier,*string)

	// A managed_identity block as defined below.
	// +kubebuilder:validation:Optional
	managedIdentity?: [...#ManagedIdentityParameters] @go(ManagedIdentity,[]ManagedIdentityParameters)

	// Specifies the type of key used to encrypt the account data. Possible values are SystemKey and CustomerKey.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Media Services Account.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Media Services Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Media Services Account.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Media Services Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Media Services Account.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Media Services Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#KeyDeliveryAccessControlInitParameters: {
	// The Default Action to use when no rules match from ip_allow_list. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Key Delivery.
	ipAllowList?: [...null | string] @go(IPAllowList,[]*string)
}

#KeyDeliveryAccessControlObservation: {
	// The Default Action to use when no rules match from ip_allow_list. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Key Delivery.
	ipAllowList?: [...null | string] @go(IPAllowList,[]*string)
}

#KeyDeliveryAccessControlParameters: {
	// The Default Action to use when no rules match from ip_allow_list. Possible values are Allow and Deny.
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Key Delivery.
	// +kubebuilder:validation:Optional
	ipAllowList?: [...null | string] @go(IPAllowList,[]*string)
}

#ManagedIdentityInitParameters: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#ManagedIdentityObservation: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#ManagedIdentityParameters: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	// +kubebuilder:validation:Optional
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	// +kubebuilder:validation:Optional
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#ServicesAccountInitParameters: {
	// An encryption block as defined below.
	encryption?: [...#EncryptionInitParameters] @go(Encryption,[]EncryptionInitParameters)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// A key_delivery_access_control block as defined below.
	keyDeliveryAccessControl?: [...#KeyDeliveryAccessControlInitParameters] @go(KeyDeliveryAccessControl,[]KeyDeliveryAccessControlInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Whether public network access is allowed for this server. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// One or more storage_account blocks as defined below.
	storageAccount?: [...#StorageAccountInitParameters] @go(StorageAccount,[]StorageAccountInitParameters)

	// Specifies the storage authentication type. Possible value is ManagedIdentity or System.
	storageAuthenticationType?: null | string @go(StorageAuthenticationType,*string)

	// A mapping of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ServicesAccountObservation: {
	// An encryption block as defined below.
	encryption?: [...#EncryptionObservation] @go(Encryption,[]EncryptionObservation)

	// The ID of the Media Services Account.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// A key_delivery_access_control block as defined below.
	keyDeliveryAccessControl?: [...#KeyDeliveryAccessControlObservation] @go(KeyDeliveryAccessControl,[]KeyDeliveryAccessControlObservation)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Whether public network access is allowed for this server. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// One or more storage_account blocks as defined below.
	storageAccount?: [...#StorageAccountObservation] @go(StorageAccount,[]StorageAccountObservation)

	// Specifies the storage authentication type. Possible value is ManagedIdentity or System.
	storageAuthenticationType?: null | string @go(StorageAuthenticationType,*string)

	// A mapping of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ServicesAccountParameters: {
	// An encryption block as defined below.
	// +kubebuilder:validation:Optional
	encryption?: [...#EncryptionParameters] @go(Encryption,[]EncryptionParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// A key_delivery_access_control block as defined below.
	// +kubebuilder:validation:Optional
	keyDeliveryAccessControl?: [...#KeyDeliveryAccessControlParameters] @go(KeyDeliveryAccessControl,[]KeyDeliveryAccessControlParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Whether public network access is allowed for this server. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// One or more storage_account blocks as defined below.
	// +kubebuilder:validation:Optional
	storageAccount?: [...#StorageAccountParameters] @go(StorageAccount,[]StorageAccountParameters)

	// Specifies the storage authentication type. Possible value is ManagedIdentity or System.
	// +kubebuilder:validation:Optional
	storageAuthenticationType?: null | string @go(StorageAuthenticationType,*string)

	// A mapping of tags assigned to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#StorageAccountInitParameters: {
	// Specifies whether the storage account should be the primary account or not. Defaults to false.
	isPrimary?: null | bool @go(IsPrimary,*bool)

	// A managed_identity block as defined below.
	managedIdentity?: [...#StorageAccountManagedIdentityInitParameters] @go(ManagedIdentity,[]StorageAccountManagedIdentityInitParameters)
}

#StorageAccountManagedIdentityInitParameters: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#StorageAccountManagedIdentityObservation: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#StorageAccountManagedIdentityParameters: {
	// Whether to use System Assigned Identity. Possible Values are true and false.
	// +kubebuilder:validation:Optional
	useSystemAssignedIdentity?: null | bool @go(UseSystemAssignedIdentity,*bool)

	// The ID of the User Assigned Identity. This value can only be set when use_system_assigned_identity is false
	// +kubebuilder:validation:Optional
	userAssignedIdentityId?: null | string @go(UserAssignedIdentityID,*string)
}

#StorageAccountObservation: {
	// Specifies the ID of the Storage Account that will be associated with the Media Services instance.
	id?: null | string @go(ID,*string)

	// Specifies whether the storage account should be the primary account or not. Defaults to false.
	isPrimary?: null | bool @go(IsPrimary,*bool)

	// A managed_identity block as defined below.
	managedIdentity?: [...#StorageAccountManagedIdentityObservation] @go(ManagedIdentity,[]StorageAccountManagedIdentityObservation)
}

#StorageAccountParameters: {
	// Specifies the ID of the Storage Account that will be associated with the Media Services instance.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Specifies whether the storage account should be the primary account or not. Defaults to false.
	// +kubebuilder:validation:Optional
	isPrimary?: null | bool @go(IsPrimary,*bool)

	// A managed_identity block as defined below.
	// +kubebuilder:validation:Optional
	managedIdentity?: [...#StorageAccountManagedIdentityParameters] @go(ManagedIdentity,[]StorageAccountManagedIdentityParameters)
}

// ServicesAccountSpec defines the desired state of ServicesAccount
#ServicesAccountSpec: {
	forProvider: #ServicesAccountParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ServicesAccountInitParameters @go(InitProvider)
}

// ServicesAccountStatus defines the observed state of ServicesAccount.
#ServicesAccountStatus: {
	atProvider?: #ServicesAccountObservation @go(AtProvider)
}

// ServicesAccount is the Schema for the ServicesAccounts API. Manages a Media Services Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ServicesAccount: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageAccount) || (has(self.initProvider) && has(self.initProvider.storageAccount))",message="spec.forProvider.storageAccount is a required parameter"
	spec:    #ServicesAccountSpec   @go(Spec)
	status?: #ServicesAccountStatus @go(Status)
}

// ServicesAccountList contains a list of ServicesAccounts
#ServicesAccountList: {
	items: [...#ServicesAccount] @go(Items,[]ServicesAccount)
}
