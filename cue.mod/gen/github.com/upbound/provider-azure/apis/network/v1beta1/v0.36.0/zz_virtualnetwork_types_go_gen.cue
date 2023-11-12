// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DDOSProtectionPlanInitParameters: {
	// Enable/disable DDoS Protection Plan on Virtual Network.
	enable?: null | bool @go(Enable,*bool)

	// The ID of DDoS Protection Plan.
	id?: null | string @go(ID,*string)
}

#DDOSProtectionPlanObservation: {
	// Enable/disable DDoS Protection Plan on Virtual Network.
	enable?: null | bool @go(Enable,*bool)

	// The ID of DDoS Protection Plan.
	id?: null | string @go(ID,*string)
}

#DDOSProtectionPlanParameters: {
	// Enable/disable DDoS Protection Plan on Virtual Network.
	// +kubebuilder:validation:Optional
	enable?: null | bool @go(Enable,*bool)

	// The ID of DDoS Protection Plan.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)
}

#VirtualNetworkInitParameters: {
	// The address space that is used the virtual network. You can supply more than one address space.
	addressSpace?: [...null | string] @go(AddressSpace,[]*string)

	// The BGP community attribute in format <as-number>:<community-value>.
	bgpCommunity?: null | string @go(BGPCommunity,*string)

	// A ddos_protection_plan block as documented below.
	ddosProtectionPlan?: [...#DDOSProtectionPlanInitParameters] @go(DDOSProtectionPlan,[]DDOSProtectionPlanInitParameters)

	// List of IP addresses of DNS servers
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
	edgeZone?: null | string @go(EdgeZone,*string)

	// The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes.
	flowTimeoutInMinutes?: null | float64 @go(FlowTimeoutInMinutes,*float64)

	// The location/region where the virtual network is created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#VirtualNetworkObservation: {
	// The address space that is used the virtual network. You can supply more than one address space.
	addressSpace?: [...null | string] @go(AddressSpace,[]*string)

	// The BGP community attribute in format <as-number>:<community-value>.
	bgpCommunity?: null | string @go(BGPCommunity,*string)

	// A ddos_protection_plan block as documented below.
	ddosProtectionPlan?: [...#DDOSProtectionPlanObservation] @go(DDOSProtectionPlan,[]DDOSProtectionPlanObservation)

	// List of IP addresses of DNS servers
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
	edgeZone?: null | string @go(EdgeZone,*string)

	// The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes.
	flowTimeoutInMinutes?: null | float64 @go(FlowTimeoutInMinutes,*float64)

	// The GUID of the virtual network.
	guid?: null | string @go(GUID,*string)

	// The virtual NetworkConfiguration ID.
	id?: null | string @go(ID,*string)

	// The location/region where the virtual network is created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Can be specified multiple times to define multiple subnets. Each subnet block supports fields documented below.
	subnet?: [...#VirtualNetworkSubnetObservation] @go(Subnet,[]VirtualNetworkSubnetObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#VirtualNetworkParameters: {
	// The address space that is used the virtual network. You can supply more than one address space.
	// +kubebuilder:validation:Optional
	addressSpace?: [...null | string] @go(AddressSpace,[]*string)

	// The BGP community attribute in format <as-number>:<community-value>.
	// +kubebuilder:validation:Optional
	bgpCommunity?: null | string @go(BGPCommunity,*string)

	// A ddos_protection_plan block as documented below.
	// +kubebuilder:validation:Optional
	ddosProtectionPlan?: [...#DDOSProtectionPlanParameters] @go(DDOSProtectionPlan,[]DDOSProtectionPlanParameters)

	// List of IP addresses of DNS servers
	// +kubebuilder:validation:Optional
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
	// +kubebuilder:validation:Optional
	edgeZone?: null | string @go(EdgeZone,*string)

	// The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes.
	// +kubebuilder:validation:Optional
	flowTimeoutInMinutes?: null | float64 @go(FlowTimeoutInMinutes,*float64)

	// The location/region where the virtual network is created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#VirtualNetworkSubnetInitParameters: {
}

#VirtualNetworkSubnetObservation: {
	// The address prefix to use for the subnet.
	addressPrefix?: null | string @go(AddressPrefix,*string)

	// The ID of this subnet.
	id?: null | string @go(ID,*string)

	// The name of the subnet.
	name?: null | string @go(Name,*string)

	// The Network Security Group to associate with the subnet. (Referenced by id, ie. azurerm_network_security_group.example.id)
	securityGroup?: null | string @go(SecurityGroup,*string)
}

#VirtualNetworkSubnetParameters: {
}

// VirtualNetworkSpec defines the desired state of VirtualNetwork
#VirtualNetworkSpec: {
	forProvider: #VirtualNetworkParameters @go(ForProvider)

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
	initProvider?: #VirtualNetworkInitParameters @go(InitProvider)
}

// VirtualNetworkStatus defines the observed state of VirtualNetwork.
#VirtualNetworkStatus: {
	atProvider?: #VirtualNetworkObservation @go(AtProvider)
}

// VirtualNetwork is the Schema for the VirtualNetworks API. Manages a virtual network including any configured subnets. Each subnet can optionally be configured with a security group to be associated with the subnet.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#VirtualNetwork: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.addressSpace) || has(self.initProvider.addressSpace)",message="addressSpace is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #VirtualNetworkSpec   @go(Spec)
	status?: #VirtualNetworkStatus @go(Status)
}

// VirtualNetworkList contains a list of VirtualNetworks
#VirtualNetworkList: {
	items: [...#VirtualNetwork] @go(Items,[]VirtualNetwork)
}
