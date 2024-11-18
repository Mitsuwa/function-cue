// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/containerregistry/v1beta1

package v1beta1

#EncryptionInitParameters: {
	// Boolean value that indicates whether encryption is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Key Vault Key.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#EncryptionObservation: {
	// Boolean value that indicates whether encryption is enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// The client ID of the managed identity associated with the encryption key.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// The ID of the Key Vault Key.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#EncryptionParameters: {
	// Boolean value that indicates whether encryption is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The client ID of the managed identity associated with the encryption key.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/managedidentity/v1beta1.UserAssignedIdentity
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("client_id",true)
	// +kubebuilder:validation:Optional
	identityClientId?: null | string @go(IdentityClientID,*string)

	// The ID of the Key Vault Key.
	// +kubebuilder:validation:Optional
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#GeoreplicationsInitParameters: {
	// A location where the container registry should be geo-replicated.
	location?: null | string @go(Location,*string)

	// Whether regional endpoint is enabled for this Container Registry?
	regionalEndpointEnabled?: null | bool @go(RegionalEndpointEnabled,*bool)

	// A mapping of tags to assign to this replication location.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#GeoreplicationsObservation: {
	// A location where the container registry should be geo-replicated.
	location?: null | string @go(Location,*string)

	// Whether regional endpoint is enabled for this Container Registry?
	regionalEndpointEnabled?: null | bool @go(RegionalEndpointEnabled,*bool)

	// A mapping of tags to assign to this replication location.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#GeoreplicationsParameters: {
	// A location where the container registry should be geo-replicated.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Whether regional endpoint is enabled for this Container Registry?
	// +kubebuilder:validation:Optional
	regionalEndpointEnabled?: null | bool @go(RegionalEndpointEnabled,*bool)

	// A mapping of tags to assign to this replication location.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	// +kubebuilder:validation:Optional
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#IPRuleInitParameters: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	action?: null | string @go(Action,*string)

	// The CIDR block from which requests will match the rule.
	ipRange?: null | string @go(IPRange,*string)
}

#IPRuleObservation: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	action?: null | string @go(Action,*string)

	// The CIDR block from which requests will match the rule.
	ipRange?: null | string @go(IPRange,*string)
}

#IPRuleParameters: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// The CIDR block from which requests will match the rule.
	// +kubebuilder:validation:Optional
	ipRange?: null | string @go(IPRange,*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#NetworkRuleSetInitParameters: {
	// The behaviour for requests matching no rules. Either Allow or Deny. Defaults to Allow
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleInitParameters] @go(IPRule,[]IPRuleInitParameters)

	// One or more virtual_network blocks as defined below.
	virtualNetwork?: [...#VirtualNetworkInitParameters] @go(VirtualNetwork,[]VirtualNetworkInitParameters)
}

#NetworkRuleSetObservation: {
	// The behaviour for requests matching no rules. Either Allow or Deny. Defaults to Allow
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleObservation] @go(IPRule,[]IPRuleObservation)

	// One or more virtual_network blocks as defined below.
	virtualNetwork?: [...#VirtualNetworkObservation] @go(VirtualNetwork,[]VirtualNetworkObservation)
}

#NetworkRuleSetParameters: {
	// The behaviour for requests matching no rules. Either Allow or Deny. Defaults to Allow
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	ipRule?: [...#IPRuleParameters] @go(IPRule,[]IPRuleParameters)

	// One or more virtual_network blocks as defined below.
	// +kubebuilder:validation:Optional
	virtualNetwork?: [...#VirtualNetworkParameters] @go(VirtualNetwork,[]VirtualNetworkParameters)
}

#RegistryInitParameters: {
	// Specifies whether the admin user is enabled. Defaults to false.
	adminEnabled?: null | bool @go(AdminEnabled,*bool)

	// Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the Standard or Premium SKU.
	anonymousPullEnabled?: null | bool @go(AnonymousPullEnabled,*bool)

	// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the Premium SKU.
	dataEndpointEnabled?: null | bool @go(DataEndpointEnabled,*bool)

	// An encryption block as documented below.
	encryption?: [...#EncryptionInitParameters] @go(Encryption,[]EncryptionInitParameters)

	// Boolean value that indicates whether export policy is enabled. Defaults to true. In order to set it to false, make sure the public_network_access_enabled is also set to false.
	exportPolicyEnabled?: null | bool @go(ExportPolicyEnabled,*bool)

	// A georeplications block as documented below.
	georeplications?: [...#GeoreplicationsInitParameters] @go(Georeplications,[]GeoreplicationsInitParameters)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are None and AzureServices. Defaults to AzureServices.
	networkRuleBypassOption?: null | string @go(NetworkRuleBypassOption,*string)

	// A network_rule_set block as documented below.
	networkRuleSet?: [...#NetworkRuleSetInitParameters] @go(NetworkRuleSet,[]NetworkRuleSetInitParameters)

	// Whether public network access is allowed for the container registry. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Boolean value that indicates whether quarantine policy is enabled.
	quarantinePolicyEnabled?: null | bool @go(QuarantinePolicyEnabled,*bool)

	// A retention_policy block as documented below.
	retentionPolicy?: [...#RetentionPolicyInitParameters] @go(RetentionPolicy,[]RetentionPolicyInitParameters)

	// The SKU name of the container registry. Possible values are Basic, Standard and Premium.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A trust_policy block as documented below.
	trustPolicy?: [...#TrustPolicyInitParameters] @go(TrustPolicy,[]TrustPolicyInitParameters)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#RegistryObservation: {
	// Specifies whether the admin user is enabled. Defaults to false.
	adminEnabled?: null | bool @go(AdminEnabled,*bool)

	// The Username associated with the Container Registry Admin account - if the admin account is enabled.
	adminUsername?: null | string @go(AdminUsername,*string)

	// Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the Standard or Premium SKU.
	anonymousPullEnabled?: null | bool @go(AnonymousPullEnabled,*bool)

	// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the Premium SKU.
	dataEndpointEnabled?: null | bool @go(DataEndpointEnabled,*bool)

	// An encryption block as documented below.
	encryption?: [...#EncryptionObservation] @go(Encryption,[]EncryptionObservation)

	// Boolean value that indicates whether export policy is enabled. Defaults to true. In order to set it to false, make sure the public_network_access_enabled is also set to false.
	exportPolicyEnabled?: null | bool @go(ExportPolicyEnabled,*bool)

	// A georeplications block as documented below.
	georeplications?: [...#GeoreplicationsObservation] @go(Georeplications,[]GeoreplicationsObservation)

	// The ID of the Container Registry.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The URL that can be used to log into the container registry.
	loginServer?: null | string @go(LoginServer,*string)

	// Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are None and AzureServices. Defaults to AzureServices.
	networkRuleBypassOption?: null | string @go(NetworkRuleBypassOption,*string)

	// A network_rule_set block as documented below.
	networkRuleSet?: [...#NetworkRuleSetObservation] @go(NetworkRuleSet,[]NetworkRuleSetObservation)

	// Whether public network access is allowed for the container registry. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Boolean value that indicates whether quarantine policy is enabled.
	quarantinePolicyEnabled?: null | bool @go(QuarantinePolicyEnabled,*bool)

	// The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A retention_policy block as documented below.
	retentionPolicy?: [...#RetentionPolicyObservation] @go(RetentionPolicy,[]RetentionPolicyObservation)

	// The SKU name of the container registry. Possible values are Basic, Standard and Premium.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A trust_policy block as documented below.
	trustPolicy?: [...#TrustPolicyObservation] @go(TrustPolicy,[]TrustPolicyObservation)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#RegistryParameters: {
	// Specifies whether the admin user is enabled. Defaults to false.
	// +kubebuilder:validation:Optional
	adminEnabled?: null | bool @go(AdminEnabled,*bool)

	// Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the Standard or Premium SKU.
	// +kubebuilder:validation:Optional
	anonymousPullEnabled?: null | bool @go(AnonymousPullEnabled,*bool)

	// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the Premium SKU.
	// +kubebuilder:validation:Optional
	dataEndpointEnabled?: null | bool @go(DataEndpointEnabled,*bool)

	// An encryption block as documented below.
	// +kubebuilder:validation:Optional
	encryption?: [...#EncryptionParameters] @go(Encryption,[]EncryptionParameters)

	// Boolean value that indicates whether export policy is enabled. Defaults to true. In order to set it to false, make sure the public_network_access_enabled is also set to false.
	// +kubebuilder:validation:Optional
	exportPolicyEnabled?: null | bool @go(ExportPolicyEnabled,*bool)

	// A georeplications block as documented below.
	// +kubebuilder:validation:Optional
	georeplications?: [...#GeoreplicationsParameters] @go(Georeplications,[]GeoreplicationsParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are None and AzureServices. Defaults to AzureServices.
	// +kubebuilder:validation:Optional
	networkRuleBypassOption?: null | string @go(NetworkRuleBypassOption,*string)

	// A network_rule_set block as documented below.
	// +kubebuilder:validation:Optional
	networkRuleSet?: [...#NetworkRuleSetParameters] @go(NetworkRuleSet,[]NetworkRuleSetParameters)

	// Whether public network access is allowed for the container registry. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Boolean value that indicates whether quarantine policy is enabled.
	// +kubebuilder:validation:Optional
	quarantinePolicyEnabled?: null | bool @go(QuarantinePolicyEnabled,*bool)

	// The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A retention_policy block as documented below.
	// +kubebuilder:validation:Optional
	retentionPolicy?: [...#RetentionPolicyParameters] @go(RetentionPolicy,[]RetentionPolicyParameters)

	// The SKU name of the container registry. Possible values are Basic, Standard and Premium.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A trust_policy block as documented below.
	// +kubebuilder:validation:Optional
	trustPolicy?: [...#TrustPolicyParameters] @go(TrustPolicy,[]TrustPolicyParameters)

	// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false.
	// +kubebuilder:validation:Optional
	zoneRedundancyEnabled?: null | bool @go(ZoneRedundancyEnabled,*bool)
}

#RetentionPolicyInitParameters: {
	// The number of days to retain an untagged manifest after which it gets purged. Default is 7.
	days?: null | float64 @go(Days,*float64)

	// Boolean value that indicates whether the policy is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#RetentionPolicyObservation: {
	// The number of days to retain an untagged manifest after which it gets purged. Default is 7.
	days?: null | float64 @go(Days,*float64)

	// Boolean value that indicates whether the policy is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#RetentionPolicyParameters: {
	// The number of days to retain an untagged manifest after which it gets purged. Default is 7.
	// +kubebuilder:validation:Optional
	days?: null | float64 @go(Days,*float64)

	// Boolean value that indicates whether the policy is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#TrustPolicyInitParameters: {
	// Boolean value that indicates whether the policy is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#TrustPolicyObservation: {
	// Boolean value that indicates whether the policy is enabled.
	enabled?: null | bool @go(Enabled,*bool)
}

#TrustPolicyParameters: {
	// Boolean value that indicates whether the policy is enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#VirtualNetworkInitParameters: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	action?: null | string @go(Action,*string)
}

#VirtualNetworkObservation: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	action?: null | string @go(Action,*string)

	// The subnet id from which requests will match the rule.
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualNetworkParameters: {
	// The behaviour for requests matching this rule. At this time the only supported value is Allow
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// The subnet id from which requests will match the rule.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// RegistrySpec defines the desired state of Registry
#RegistrySpec: {
	forProvider: #RegistryParameters @go(ForProvider)

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
	initProvider?: #RegistryInitParameters @go(InitProvider)
}

// RegistryStatus defines the observed state of Registry.
#RegistryStatus: {
	atProvider?: #RegistryObservation @go(AtProvider)
}

// Registry is the Schema for the Registrys API. Manages an Azure Container Registry.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Registry: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sku) || (has(self.initProvider) && has(self.initProvider.sku))",message="spec.forProvider.sku is a required parameter"
	spec:    #RegistrySpec   @go(Spec)
	status?: #RegistryStatus @go(Status)
}

// RegistryList contains a list of Registrys
#RegistryList: {
	items: [...#Registry] @go(Items,[]Registry)
}
