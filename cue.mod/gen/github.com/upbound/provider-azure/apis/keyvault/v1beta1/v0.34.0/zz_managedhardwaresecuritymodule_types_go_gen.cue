// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/keyvault/v1beta1

package v1beta1

#ManagedHardwareSecurityModuleNetworkAclsObservation: {
	// Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
	bypass?: null | string @go(Bypass,*string)

	// The Default Action to use. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)
}

#ManagedHardwareSecurityModuleNetworkAclsParameters: {
	// Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
	// +kubebuilder:validation:Required
	bypass?: null | string @go(Bypass,*string)

	// The Default Action to use. Possible values are Allow and Deny.
	// +kubebuilder:validation:Required
	defaultAction?: null | string @go(DefaultAction,*string)
}

#ManagedHardwareSecurityModuleObservation: {
	// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	adminObjectIds?: [...null | string] @go(AdminObjectIds,[]*string)

	// The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys.
	hsmUri?: null | string @go(HSMURI,*string)

	// The Key Vault Secret Managed Hardware Security Module ID.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A network_acls block as defined below.
	networkAcls?: [...#ManagedHardwareSecurityModuleNetworkAclsObservation] @go(NetworkAcls,[]ManagedHardwareSecurityModuleNetworkAclsObservation)

	// Whether traffic from public networks is permitted. Defaults to true. Changing this forces a new resource to be created.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
	purgeProtectionEnabled?: null | bool @go(PurgeProtectionEnabled,*bool)

	// The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is Standard_B1. Changing this forces a new resource to be created.
	skuName?: null | string @go(SkuName,*string)

	// The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days. Defaults to 90. Changing this forces a new resource to be created.
	softDeleteRetentionDays?: null | float64 @go(SoftDeleteRetentionDays,*float64)

	// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	tenantId?: null | string @go(TenantID,*string)
}

#ManagedHardwareSecurityModuleParameters: {
	// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	adminObjectIds?: [...null | string] @go(AdminObjectIds,[]*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A network_acls block as defined below.
	// +kubebuilder:validation:Optional
	networkAcls?: [...#ManagedHardwareSecurityModuleNetworkAclsParameters] @go(NetworkAcls,[]ManagedHardwareSecurityModuleNetworkAclsParameters)

	// Whether traffic from public networks is permitted. Defaults to true. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	purgeProtectionEnabled?: null | bool @go(PurgeProtectionEnabled,*bool)

	// The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is Standard_B1. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days. Defaults to 90. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	softDeleteRetentionDays?: null | float64 @go(SoftDeleteRetentionDays,*float64)

	// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tenantId?: null | string @go(TenantID,*string)
}

// ManagedHardwareSecurityModuleSpec defines the desired state of ManagedHardwareSecurityModule
#ManagedHardwareSecurityModuleSpec: {
	forProvider: #ManagedHardwareSecurityModuleParameters @go(ForProvider)
}

// ManagedHardwareSecurityModuleStatus defines the observed state of ManagedHardwareSecurityModule.
#ManagedHardwareSecurityModuleStatus: {
	atProvider?: #ManagedHardwareSecurityModuleObservation @go(AtProvider)
}

// ManagedHardwareSecurityModule is the Schema for the ManagedHardwareSecurityModules API. Manages a Key Vault Managed Hardware Security Module.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagedHardwareSecurityModule: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.adminObjectIds)",message="adminObjectIds is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.skuName)",message="skuName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.tenantId)",message="tenantId is a required parameter"
	spec:    #ManagedHardwareSecurityModuleSpec   @go(Spec)
	status?: #ManagedHardwareSecurityModuleStatus @go(Status)
}

// ManagedHardwareSecurityModuleList contains a list of ManagedHardwareSecurityModules
#ManagedHardwareSecurityModuleList: {
	items: [...#ManagedHardwareSecurityModule] @go(Items,[]ManagedHardwareSecurityModule)
}
