// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ExpressRouteCircuitPeeringInitParameters: {
	// A boolean value indicating whether the IPv4 peering is enabled. Defaults to true.
	ipv4Enabled?: null | bool @go(IPv4Enabled,*bool)

	// A ipv6 block as defined below.
	ipv6?: [...#IPv6InitParameters] @go(IPv6,[]IPv6InitParameters)

	// A microsoft_peering_config block as defined below. Required when peering_type is set to MicrosoftPeering and config for IPv4.
	microsoftPeeringConfig?: [...#MicrosoftPeeringConfigInitParameters] @go(MicrosoftPeeringConfig,[]MicrosoftPeeringConfigInitParameters)

	// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
	peerAsn?: null | float64 @go(PeerAsn,*float64)

	// A /30 subnet for the primary link. Required when config for IPv4.
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// A /30 subnet for the secondary link. Required when config for IPv4.
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)

	// A valid VLAN ID to establish this peering on.
	vlanId?: null | float64 @go(VlanID,*float64)
}

#ExpressRouteCircuitPeeringObservation: {
	// The ASN used by Azure.
	azureAsn?: null | float64 @go(AzureAsn,*float64)

	// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
	expressRouteCircuitName?: null | string @go(ExpressRouteCircuitName,*string)
	gatewayManagerEtag?:      null | string @go(GatewayManagerEtag,*string)

	// The ID of the ExpressRoute Circuit Peering.
	id?: null | string @go(ID,*string)

	// A boolean value indicating whether the IPv4 peering is enabled. Defaults to true.
	ipv4Enabled?: null | bool @go(IPv4Enabled,*bool)

	// A ipv6 block as defined below.
	ipv6?: [...#IPv6Observation] @go(IPv6,[]IPv6Observation)

	// A microsoft_peering_config block as defined below. Required when peering_type is set to MicrosoftPeering and config for IPv4.
	microsoftPeeringConfig?: [...#MicrosoftPeeringConfigObservation] @go(MicrosoftPeeringConfig,[]MicrosoftPeeringConfigObservation)

	// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
	peerAsn?: null | float64 @go(PeerAsn,*float64)

	// The Primary Port used by Azure for this Peering.
	primaryAzurePort?: null | string @go(PrimaryAzurePort,*string)

	// A /30 subnet for the primary link. Required when config for IPv4.
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// The Secondary Port used by Azure for this Peering.
	secondaryAzurePort?: null | string @go(SecondaryAzurePort,*string)

	// A /30 subnet for the secondary link. Required when config for IPv4.
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)

	// A valid VLAN ID to establish this peering on.
	vlanId?: null | float64 @go(VlanID,*float64)
}

#ExpressRouteCircuitPeeringParameters: {
	// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=ExpressRouteCircuit
	// +kubebuilder:validation:Optional
	expressRouteCircuitName?: null | string @go(ExpressRouteCircuitName,*string)

	// A boolean value indicating whether the IPv4 peering is enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	ipv4Enabled?: null | bool @go(IPv4Enabled,*bool)

	// A ipv6 block as defined below.
	// +kubebuilder:validation:Optional
	ipv6?: [...#IPv6Parameters] @go(IPv6,[]IPv6Parameters)

	// A microsoft_peering_config block as defined below. Required when peering_type is set to MicrosoftPeering and config for IPv4.
	// +kubebuilder:validation:Optional
	microsoftPeeringConfig?: [...#MicrosoftPeeringConfigParameters] @go(MicrosoftPeeringConfig,[]MicrosoftPeeringConfigParameters)

	// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
	// +kubebuilder:validation:Optional
	peerAsn?: null | float64 @go(PeerAsn,*float64)

	// A /30 subnet for the primary link. Required when config for IPv4.
	// +kubebuilder:validation:Optional
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	// +kubebuilder:validation:Optional
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// A /30 subnet for the secondary link. Required when config for IPv4.
	// +kubebuilder:validation:Optional
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)

	// A valid VLAN ID to establish this peering on.
	// +kubebuilder:validation:Optional
	vlanId?: null | float64 @go(VlanID,*float64)
}

#IPv6InitParameters: {
	// A boolean value indicating whether the IPv6 peering is enabled. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// A microsoft_peering block as defined below.
	microsoftPeering?: [...#MicrosoftPeeringInitParameters] @go(MicrosoftPeering,[]MicrosoftPeeringInitParameters)

	// A subnet for the primary link.
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// A subnet for the secondary link.
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)
}

#IPv6Observation: {
	// A boolean value indicating whether the IPv6 peering is enabled. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// A microsoft_peering block as defined below.
	microsoftPeering?: [...#MicrosoftPeeringObservation] @go(MicrosoftPeering,[]MicrosoftPeeringObservation)

	// A subnet for the primary link.
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// A subnet for the secondary link.
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)
}

#IPv6Parameters: {
	// A boolean value indicating whether the IPv6 peering is enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// A microsoft_peering block as defined below.
	// +kubebuilder:validation:Optional
	microsoftPeering?: [...#MicrosoftPeeringParameters] @go(MicrosoftPeering,[]MicrosoftPeeringParameters)

	// A subnet for the primary link.
	// +kubebuilder:validation:Optional
	primaryPeerAddressPrefix?: null | string @go(PrimaryPeerAddressPrefix,*string)

	// The ID of the Route Filter. Only available when peering_type is set to MicrosoftPeering.
	// +kubebuilder:validation:Optional
	routeFilterId?: null | string @go(RouteFilterID,*string)

	// A subnet for the secondary link.
	// +kubebuilder:validation:Optional
	secondaryPeerAddressPrefix?: null | string @go(SecondaryPeerAddressPrefix,*string)
}

#MicrosoftPeeringConfigInitParameters: {
	// The communities of Bgp Peering specified for microsoft peering.
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

#MicrosoftPeeringConfigObservation: {
	// The communities of Bgp Peering specified for microsoft peering.
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

#MicrosoftPeeringConfigParameters: {
	// The communities of Bgp Peering specified for microsoft peering.
	// +kubebuilder:validation:Optional
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	// +kubebuilder:validation:Optional
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	// +kubebuilder:validation:Optional
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	// +kubebuilder:validation:Optional
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

#MicrosoftPeeringInitParameters: {
	// The communities of Bgp Peering specified for microsoft peering.
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

#MicrosoftPeeringObservation: {
	// The communities of Bgp Peering specified for microsoft peering.
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

#MicrosoftPeeringParameters: {
	// The communities of Bgp Peering specified for microsoft peering.
	// +kubebuilder:validation:Optional
	advertisedCommunities?: [...null | string] @go(AdvertisedCommunities,[]*string)

	// A list of Advertised Public Prefixes.
	// +kubebuilder:validation:Optional
	advertisedPublicPrefixes?: [...null | string] @go(AdvertisedPublicPrefixes,[]*string)

	// The CustomerASN of the peering. Defaults to 0.
	// +kubebuilder:validation:Optional
	customerAsn?: null | float64 @go(CustomerAsn,*float64)

	// The Routing Registry against which the AS number and prefixes are registered. For example: ARIN, RIPE, AFRINIC etc. Defaults to NONE.
	// +kubebuilder:validation:Optional
	routingRegistryName?: null | string @go(RoutingRegistryName,*string)
}

// ExpressRouteCircuitPeeringSpec defines the desired state of ExpressRouteCircuitPeering
#ExpressRouteCircuitPeeringSpec: {
	forProvider: #ExpressRouteCircuitPeeringParameters @go(ForProvider)

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
	initProvider?: #ExpressRouteCircuitPeeringInitParameters @go(InitProvider)
}

// ExpressRouteCircuitPeeringStatus defines the observed state of ExpressRouteCircuitPeering.
#ExpressRouteCircuitPeeringStatus: {
	atProvider?: #ExpressRouteCircuitPeeringObservation @go(AtProvider)
}

// ExpressRouteCircuitPeering is the Schema for the ExpressRouteCircuitPeerings API. Manages an ExpressRoute Circuit Peering.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ExpressRouteCircuitPeering: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.vlanId) || has(self.initProvider.vlanId)",message="vlanId is a required parameter"
	spec:    #ExpressRouteCircuitPeeringSpec   @go(Spec)
	status?: #ExpressRouteCircuitPeeringStatus @go(Status)
}

// ExpressRouteCircuitPeeringList contains a list of ExpressRouteCircuitPeerings
#ExpressRouteCircuitPeeringList: {
	items: [...#ExpressRouteCircuitPeering] @go(Items,[]ExpressRouteCircuitPeering)
}
