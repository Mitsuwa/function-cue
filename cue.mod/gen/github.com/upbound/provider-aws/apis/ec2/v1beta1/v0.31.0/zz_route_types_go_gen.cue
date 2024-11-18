// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#RouteObservation_2: {
	// Route identifier computed from the routing table identifier and route destination.
	id?: null | string @go(ID,*string)

	// The AWS account ID of the owner of the EC2 instance.
	instanceOwnerId?: null | string @go(InstanceOwnerID,*string)

	// How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation.
	origin?: null | string @go(Origin,*string)

	// The state of the route - active or blackhole.
	state?: null | string @go(State,*string)
}

#RouteParameters_2: {
	// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
	// +kubebuilder:validation:Optional
	carrierGatewayId?: null | string @go(CarrierGatewayID,*string)

	// The Amazon Resource Name (ARN) of a core network.
	// +kubebuilder:validation:Optional
	coreNetworkArn?: null | string @go(CoreNetworkArn,*string)

	// The destination CIDR block.
	// +kubebuilder:validation:Optional
	destinationCidrBlock?: null | string @go(DestinationCidrBlock,*string)

	// The destination IPv6 CIDR block.
	// +kubebuilder:validation:Optional
	destinationIpv6CidrBlock?: null | string @go(DestinationIPv6CidrBlock,*string)

	// The ID of a managed prefix list destination.
	// +kubebuilder:validation:Optional
	destinationPrefixListId?: null | string @go(DestinationPrefixListID,*string)

	// Identifier of a VPC Egress Only Internet Gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.EgressOnlyInternetGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	egressOnlyGatewayId?: null | string @go(EgressOnlyGatewayID,*string)

	// Identifier of a VPC internet gateway or a virtual private gateway.
	// +crossplane:generate:reference:type=InternetGateway
	// +kubebuilder:validation:Optional
	gatewayId?: null | string @go(GatewayID,*string)

	// Identifier of an EC2 instance.
	// +crossplane:generate:reference:type=Instance
	// +kubebuilder:validation:Optional
	instanceId?: null | string @go(InstanceID,*string)

	// Identifier of a Outpost local gateway.
	// +kubebuilder:validation:Optional
	localGatewayId?: null | string @go(LocalGatewayID,*string)

	// Identifier of a VPC NAT gateway.
	// +crossplane:generate:reference:type=NATGateway
	// +kubebuilder:validation:Optional
	natGatewayId?: null | string @go(NATGatewayID,*string)

	// Identifier of an EC2 network interface.
	// +crossplane:generate:reference:type=NetworkInterface
	// +kubebuilder:validation:Optional
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ID of the routing table.
	// +crossplane:generate:reference:type=RouteTable
	// +kubebuilder:validation:Optional
	routeTableId?: null | string @go(RouteTableID,*string)

	// Identifier of an EC2 Transit Gateway.
	// +crossplane:generate:reference:type=TransitGateway
	// +kubebuilder:validation:Optional
	transitGatewayId?: null | string @go(TransitGatewayID,*string)

	// Identifier of a VPC Endpoint.
	// +crossplane:generate:reference:type=VPCEndpoint
	// +kubebuilder:validation:Optional
	vpcEndpointId?: null | string @go(VPCEndpointID,*string)

	// Identifier of a VPC peering connection.
	// +crossplane:generate:reference:type=VPCPeeringConnection
	// +kubebuilder:validation:Optional
	vpcPeeringConnectionId?: null | string @go(VPCPeeringConnectionID,*string)
}

// RouteSpec defines the desired state of Route
#RouteSpec: {
	forProvider: #RouteParameters_2 @go(ForProvider)
}

// RouteStatus defines the observed state of Route.
#RouteStatus: {
	atProvider?: #RouteObservation_2 @go(AtProvider)
}

// Route is the Schema for the Routes API. Provides a resource to create a routing entry in a VPC routing table.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Route: {
	spec:    #RouteSpec   @go(Spec)
	status?: #RouteStatus @go(Status)
}

// RouteList contains a list of Routes
#RouteList: {
	items: [...#Route] @go(Items,[]Route)
}
