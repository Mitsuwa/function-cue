// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#InboundNATRulePortMappingInitParameters: {
}

#InboundNATRulePortMappingObservation: {
	// The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
	backendPort?: null | float64 @go(BackendPort,*float64)

	// The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
	frontendPort?: null | float64 @go(FrontendPort,*float64)

	// The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
	inboundNatRuleName?: null | string @go(InboundNATRuleName,*string)
}

#InboundNATRulePortMappingParameters: {
}

#LoadBalancerBackendAddressPoolAddressInitParameters: {
	// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
	// For global load balancer, user needs to specify the `backend_address_ip_configuration_id` of the added regional load balancers
	backendAddressIpConfigurationId?: null | string @go(BackendAddressIPConfigurationID,*string)

	// The Static IP Address which should be allocated to this Backend Address Pool.
	ipAddress?: null | string @go(IPAddress,*string)
}

#LoadBalancerBackendAddressPoolAddressObservation: {
	// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
	// For global load balancer, user needs to specify the `backend_address_ip_configuration_id` of the added regional load balancers
	backendAddressIpConfigurationId?: null | string @go(BackendAddressIPConfigurationID,*string)

	// The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
	backendAddressPoolId?: null | string @go(BackendAddressPoolID,*string)

	// The ID of the Backend Address Pool Address.
	id?: null | string @go(ID,*string)

	// The Static IP Address which should be allocated to this Backend Address Pool.
	ipAddress?: null | string @go(IPAddress,*string)

	// A list of inbound_nat_rule_port_mapping block as defined below.
	inboundNatRulePortMapping?: [...#InboundNATRulePortMappingObservation] @go(InboundNATRulePortMapping,[]InboundNATRulePortMappingObservation)

	// The ID of the Virtual Network within which the Backend Address Pool should exist.
	// For regional load balancer, user needs to specify `virtual_network_id` and `ip_address`
	virtualNetworkId?: null | string @go(VirtualNetworkID,*string)
}

#LoadBalancerBackendAddressPoolAddressParameters: {
	// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
	// For global load balancer, user needs to specify the `backend_address_ip_configuration_id` of the added regional load balancers
	// +kubebuilder:validation:Optional
	backendAddressIpConfigurationId?: null | string @go(BackendAddressIPConfigurationID,*string)

	// The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
	// +crossplane:generate:reference:type=LoadBalancerBackendAddressPool
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	backendAddressPoolId?: null | string @go(BackendAddressPoolID,*string)

	// The Static IP Address which should be allocated to this Backend Address Pool.
	// +kubebuilder:validation:Optional
	ipAddress?: null | string @go(IPAddress,*string)

	// The ID of the Virtual Network within which the Backend Address Pool should exist.
	// For regional load balancer, user needs to specify `virtual_network_id` and `ip_address`
	// +crossplane:generate:reference:type=VirtualNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualNetworkId?: null | string @go(VirtualNetworkID,*string)
}

// LoadBalancerBackendAddressPoolAddressSpec defines the desired state of LoadBalancerBackendAddressPoolAddress
#LoadBalancerBackendAddressPoolAddressSpec: {
	forProvider: #LoadBalancerBackendAddressPoolAddressParameters @go(ForProvider)

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
	initProvider?: #LoadBalancerBackendAddressPoolAddressInitParameters @go(InitProvider)
}

// LoadBalancerBackendAddressPoolAddressStatus defines the observed state of LoadBalancerBackendAddressPoolAddress.
#LoadBalancerBackendAddressPoolAddressStatus: {
	atProvider?: #LoadBalancerBackendAddressPoolAddressObservation @go(AtProvider)
}

// LoadBalancerBackendAddressPoolAddress is the Schema for the LoadBalancerBackendAddressPoolAddresss API. Manages a Backend Address within a Backend Address Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LoadBalancerBackendAddressPoolAddress: {
	spec:    #LoadBalancerBackendAddressPoolAddressSpec   @go(Spec)
	status?: #LoadBalancerBackendAddressPoolAddressStatus @go(Status)
}

// LoadBalancerBackendAddressPoolAddressList contains a list of LoadBalancerBackendAddressPoolAddresss
#LoadBalancerBackendAddressPoolAddressList: {
	items: [...#LoadBalancerBackendAddressPoolAddress] @go(Items,[]LoadBalancerBackendAddressPoolAddress)
}
