// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/eventhub/v1beta1

package v1beta1

#EventHubNamespaceInitParameters: {
	// Is Auto Inflate enabled for the EventHub Namespace?
	autoInflateEnabled?: null | bool @go(AutoInflateEnabled,*bool)

	// Specifies the Capacity / Throughput Units for a Standard SKU namespace. Default capacity has a maximum of 2, but can be increased in blocks of 2 on a committed purchase basis. Defaults to 1.
	capacity?: null | float64 @go(Capacity,*float64)

	// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
	dedicatedClusterId?: null | string @go(DedicatedClusterID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Is SAS authentication enabled for the EventHub Namespace? Defaults to true.
	localAuthenticationEnabled?: null | bool @go(LocalAuthenticationEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from 1 - 20.
	maximumThroughputUnits?: null | float64 @go(MaximumThroughputUnits,*float64)

	// The minimum supported TLS version for this EventHub Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2.
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)

	// A network_rulesets block as defined below.
	networkRulesets?: [...#NetworkRulesetsInitParameters] @go(NetworkRulesets,[]NetworkRulesetsInitParameters)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Defines which tier to use. Valid options are Basic, Standard, and Premium. Please note that setting this field to Premium will force the creation of a new resource.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to false.
	zoneRedundant?: null | bool @go(ZoneRedundant,*bool)
}

#EventHubNamespaceObservation: {
	// Is Auto Inflate enabled for the EventHub Namespace?
	autoInflateEnabled?: null | bool @go(AutoInflateEnabled,*bool)

	// Specifies the Capacity / Throughput Units for a Standard SKU namespace. Default capacity has a maximum of 2, but can be increased in blocks of 2 on a committed purchase basis. Defaults to 1.
	capacity?: null | float64 @go(Capacity,*float64)

	// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
	dedicatedClusterId?: null | string @go(DedicatedClusterID,*string)

	// The EventHub Namespace ID.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Is SAS authentication enabled for the EventHub Namespace? Defaults to true.
	localAuthenticationEnabled?: null | bool @go(LocalAuthenticationEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from 1 - 20.
	maximumThroughputUnits?: null | float64 @go(MaximumThroughputUnits,*float64)

	// The minimum supported TLS version for this EventHub Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2.
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)

	// A network_rulesets block as defined below.
	networkRulesets?: [...#NetworkRulesetsObservation] @go(NetworkRulesets,[]NetworkRulesetsObservation)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which to create the namespace. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Defines which tier to use. Valid options are Basic, Standard, and Premium. Please note that setting this field to Premium will force the creation of a new resource.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to false.
	zoneRedundant?: null | bool @go(ZoneRedundant,*bool)
}

#EventHubNamespaceParameters: {
	// Is Auto Inflate enabled for the EventHub Namespace?
	// +kubebuilder:validation:Optional
	autoInflateEnabled?: null | bool @go(AutoInflateEnabled,*bool)

	// Specifies the Capacity / Throughput Units for a Standard SKU namespace. Default capacity has a maximum of 2, but can be increased in blocks of 2 on a committed purchase basis. Defaults to 1.
	// +kubebuilder:validation:Optional
	capacity?: null | float64 @go(Capacity,*float64)

	// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	dedicatedClusterId?: null | string @go(DedicatedClusterID,*string)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Is SAS authentication enabled for the EventHub Namespace? Defaults to true.
	// +kubebuilder:validation:Optional
	localAuthenticationEnabled?: null | bool @go(LocalAuthenticationEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from 1 - 20.
	// +kubebuilder:validation:Optional
	maximumThroughputUnits?: null | float64 @go(MaximumThroughputUnits,*float64)

	// The minimum supported TLS version for this EventHub Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2.
	// +kubebuilder:validation:Optional
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)

	// A network_rulesets block as defined below.
	// +kubebuilder:validation:Optional
	networkRulesets?: [...#NetworkRulesetsParameters] @go(NetworkRulesets,[]NetworkRulesetsParameters)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which to create the namespace. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Defines which tier to use. Valid options are Basic, Standard, and Premium. Please note that setting this field to Premium will force the creation of a new resource.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to false.
	// +kubebuilder:validation:Optional
	zoneRedundant?: null | bool @go(ZoneRedundant,*bool)
}

#IPRuleInitParameters: {
	// The action to take when the rule is matched. Possible values are Allow.
	action?: null | string @go(Action,*string)

	// The IP mask to match on.
	ipMask?: null | string @go(IPMask,*string)
}

#IPRuleObservation: {
	// The action to take when the rule is matched. Possible values are Allow.
	action?: null | string @go(Action,*string)

	// The IP mask to match on.
	ipMask?: null | string @go(IPMask,*string)
}

#IPRuleParameters: {
	// The action to take when the rule is matched. Possible values are Allow.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// The IP mask to match on.
	// +kubebuilder:validation:Optional
	ipMask?: null | string @go(IPMask,*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are SystemAssigned or UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are SystemAssigned or UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are SystemAssigned or UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#NetworkRulesetsInitParameters: {
	// The default action to take when a rule is not matched. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleInitParameters] @go(IPRule,[]IPRuleInitParameters)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Whether Trusted Microsoft Services are allowed to bypass firewall.
	trustedServiceAccessEnabled?: null | bool @go(TrustedServiceAccessEnabled,*bool)

	// One or more virtual_network_rule blocks as defined below.
	virtualNetworkRule?: [...#VirtualNetworkRuleInitParameters] @go(VirtualNetworkRule,[]VirtualNetworkRuleInitParameters)
}

#NetworkRulesetsObservation: {
	// The default action to take when a rule is not matched. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	ipRule?: [...#IPRuleObservation] @go(IPRule,[]IPRuleObservation)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Whether Trusted Microsoft Services are allowed to bypass firewall.
	trustedServiceAccessEnabled?: null | bool @go(TrustedServiceAccessEnabled,*bool)

	// One or more virtual_network_rule blocks as defined below.
	virtualNetworkRule?: [...#VirtualNetworkRuleObservation] @go(VirtualNetworkRule,[]VirtualNetworkRuleObservation)
}

#NetworkRulesetsParameters: {
	// The default action to take when a rule is not matched. Possible values are Allow and Deny.
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more ip_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	ipRule?: [...#IPRuleParameters] @go(IPRule,[]IPRuleParameters)

	// Is public network access enabled for the EventHub Namespace? Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Whether Trusted Microsoft Services are allowed to bypass firewall.
	// +kubebuilder:validation:Optional
	trustedServiceAccessEnabled?: null | bool @go(TrustedServiceAccessEnabled,*bool)

	// One or more virtual_network_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	virtualNetworkRule?: [...#VirtualNetworkRuleParameters] @go(VirtualNetworkRule,[]VirtualNetworkRuleParameters)
}

#VirtualNetworkRuleInitParameters: {
	// Are missing virtual network service endpoints ignored?
	ignoreMissingVirtualNetworkServiceEndpoint?: null | bool @go(IgnoreMissingVirtualNetworkServiceEndpoint,*bool)
}

#VirtualNetworkRuleObservation: {
	// Are missing virtual network service endpoints ignored?
	ignoreMissingVirtualNetworkServiceEndpoint?: null | bool @go(IgnoreMissingVirtualNetworkServiceEndpoint,*bool)

	// The id of the subnet to match on.
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualNetworkRuleParameters: {
	// Are missing virtual network service endpoints ignored?
	// +kubebuilder:validation:Optional
	ignoreMissingVirtualNetworkServiceEndpoint?: null | bool @go(IgnoreMissingVirtualNetworkServiceEndpoint,*bool)

	// The id of the subnet to match on.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// EventHubNamespaceSpec defines the desired state of EventHubNamespace
#EventHubNamespaceSpec: {
	forProvider: #EventHubNamespaceParameters @go(ForProvider)

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
	initProvider?: #EventHubNamespaceInitParameters @go(InitProvider)
}

// EventHubNamespaceStatus defines the observed state of EventHubNamespace.
#EventHubNamespaceStatus: {
	atProvider?: #EventHubNamespaceObservation @go(AtProvider)
}

// EventHubNamespace is the Schema for the EventHubNamespaces API. Manages an EventHub Namespace.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#EventHubNamespace: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sku) || (has(self.initProvider) && has(self.initProvider.sku))",message="spec.forProvider.sku is a required parameter"
	spec:    #EventHubNamespaceSpec   @go(Spec)
	status?: #EventHubNamespaceStatus @go(Status)
}

// EventHubNamespaceList contains a list of EventHubNamespaces
#EventHubNamespaceList: {
	items: [...#EventHubNamespace] @go(Items,[]EventHubNamespace)
}
