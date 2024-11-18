// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ExpressRouteCircuitConnectionInitParameters: {
	// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
	addressPrefixIpv4?: null | string @go(AddressPrefixIPv4,*string)

	// The IPv6 address space from which to allocate customer addresses for global reach.
	addressPrefixIpv6?: null | string @go(AddressPrefixIPv6,*string)
}

#ExpressRouteCircuitConnectionObservation: {
	// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
	addressPrefixIpv4?: null | string @go(AddressPrefixIPv4,*string)

	// The IPv6 address space from which to allocate customer addresses for global reach.
	addressPrefixIpv6?: null | string @go(AddressPrefixIPv6,*string)

	// The ID of the Express Route Circuit Connection.
	id?: null | string @go(ID,*string)

	// The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
	peerPeeringId?: null | string @go(PeerPeeringID,*string)

	// The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
	peeringId?: null | string @go(PeeringID,*string)
}

#ExpressRouteCircuitConnectionParameters: {
	// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
	// +kubebuilder:validation:Optional
	addressPrefixIpv4?: null | string @go(AddressPrefixIPv4,*string)

	// The IPv6 address space from which to allocate customer addresses for global reach.
	// +kubebuilder:validation:Optional
	addressPrefixIpv6?: null | string @go(AddressPrefixIPv6,*string)

	// The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
	// +crossplane:generate:reference:type=ExpressRouteCircuitPeering
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	peerPeeringId?: null | string @go(PeerPeeringID,*string)

	// The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
	// +crossplane:generate:reference:type=ExpressRouteCircuitPeering
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	peeringId?: null | string @go(PeeringID,*string)
}

// ExpressRouteCircuitConnectionSpec defines the desired state of ExpressRouteCircuitConnection
#ExpressRouteCircuitConnectionSpec: {
	forProvider: #ExpressRouteCircuitConnectionParameters @go(ForProvider)

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
	initProvider?: #ExpressRouteCircuitConnectionInitParameters @go(InitProvider)
}

// ExpressRouteCircuitConnectionStatus defines the observed state of ExpressRouteCircuitConnection.
#ExpressRouteCircuitConnectionStatus: {
	atProvider?: #ExpressRouteCircuitConnectionObservation @go(AtProvider)
}

// ExpressRouteCircuitConnection is the Schema for the ExpressRouteCircuitConnections API. Manages an Express Route Circuit Connection.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ExpressRouteCircuitConnection: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.addressPrefixIpv4) || (has(self.initProvider) && has(self.initProvider.addressPrefixIpv4))",message="spec.forProvider.addressPrefixIpv4 is a required parameter"
	spec:    #ExpressRouteCircuitConnectionSpec   @go(Spec)
	status?: #ExpressRouteCircuitConnectionStatus @go(Status)
}

// ExpressRouteCircuitConnectionList contains a list of ExpressRouteCircuitConnections
#ExpressRouteCircuitConnectionList: {
	items: [...#ExpressRouteCircuitConnection] @go(Items,[]ExpressRouteCircuitConnection)
}
