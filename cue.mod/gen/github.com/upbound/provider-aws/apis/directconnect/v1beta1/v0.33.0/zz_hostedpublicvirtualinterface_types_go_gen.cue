// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/directconnect/v1beta1

package v1beta1

#HostedPublicVirtualInterfaceObservation: {
	amazonSideAsn?: null | string @go(AmazonSideAsn,*string)

	// The ARN of the virtual interface.
	arn?: null | string @go(Arn,*string)

	// The Direct Connect endpoint on which the virtual interface terminates.
	awsDevice?: null | string @go(AwsDevice,*string)

	// The ID of the virtual interface.
	id?: null | string @go(ID,*string)
}

#HostedPublicVirtualInterfaceParameters: {
	// The address family for the BGP peer. ipv4  or ipv6.
	// +kubebuilder:validation:Required
	addressFamily?: null | string @go(AddressFamily,*string)

	// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
	// +kubebuilder:validation:Optional
	amazonAddress?: null | string @go(AmazonAddress,*string)

	// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
	// +kubebuilder:validation:Required
	bgpAsn?: null | float64 @go(BGPAsn,*float64)

	// The authentication key for BGP configuration.
	// +kubebuilder:validation:Optional
	bgpAuthKey?: null | string @go(BGPAuthKey,*string)

	// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
	// +crossplane:generate:reference:type=Connection
	// +kubebuilder:validation:Optional
	connectionId?: null | string @go(ConnectionID,*string)

	// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
	// +kubebuilder:validation:Optional
	customerAddress?: null | string @go(CustomerAddress,*string)

	// The name for the virtual interface.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The AWS account that will own the new virtual interface.
	// +kubebuilder:validation:Required
	ownerAccountId?: null | string @go(OwnerAccountID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A list of routes to be advertised to the AWS network in this region.
	// +kubebuilder:validation:Required
	routeFilterPrefixes: [...null | string] @go(RouteFilterPrefixes,[]*string)

	// The VLAN ID.
	// +kubebuilder:validation:Required
	vlan?: null | float64 @go(Vlan,*float64)
}

// HostedPublicVirtualInterfaceSpec defines the desired state of HostedPublicVirtualInterface
#HostedPublicVirtualInterfaceSpec: {
	forProvider: #HostedPublicVirtualInterfaceParameters @go(ForProvider)
}

// HostedPublicVirtualInterfaceStatus defines the observed state of HostedPublicVirtualInterface.
#HostedPublicVirtualInterfaceStatus: {
	atProvider?: #HostedPublicVirtualInterfaceObservation @go(AtProvider)
}

// HostedPublicVirtualInterface is the Schema for the HostedPublicVirtualInterfaces API. Provides a Direct Connect hosted public virtual interface resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#HostedPublicVirtualInterface: {
	spec:    #HostedPublicVirtualInterfaceSpec   @go(Spec)
	status?: #HostedPublicVirtualInterfaceStatus @go(Status)
}

// HostedPublicVirtualInterfaceList contains a list of HostedPublicVirtualInterfaces
#HostedPublicVirtualInterfaceList: {
	items: [...#HostedPublicVirtualInterface] @go(Items,[]HostedPublicVirtualInterface)
}
