// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#VPCPeeringConnectionAccepterAccepterObservation: {
}

#VPCPeeringConnectionAccepterAccepterParameters: {
	// Indicates whether a local ClassicLink connection can communicate
	// with the peer VPC over the VPC Peering Connection.
	// +kubebuilder:validation:Optional
	allowClassicLinkToRemoteVpc?: null | bool @go(AllowClassicLinkToRemoteVPC,*bool)

	// Indicates whether a local VPC can resolve public DNS hostnames to
	// private IP addresses when queried from instances in a peer VPC.
	// +kubebuilder:validation:Optional
	allowRemoteVpcDnsResolution?: null | bool @go(AllowRemoteVPCDNSResolution,*bool)

	// Indicates whether a local VPC can communicate with a ClassicLink
	// connection in the peer VPC over the VPC Peering Connection.
	// +kubebuilder:validation:Optional
	allowVpcToRemoteClassicLink?: null | bool @go(AllowVPCToRemoteClassicLink,*bool)
}

#VPCPeeringConnectionAccepterObservation: {
	// The status of the VPC Peering Connection request.
	acceptStatus?: null | string @go(AcceptStatus,*string)

	// The ID of the VPC Peering Connection.
	id?: null | string @go(ID,*string)

	// The AWS account ID of the owner of the requester VPC.
	peerOwnerId?: null | string @go(PeerOwnerID,*string)

	// The region of the accepter VPC.
	peerRegion?: null | string @go(PeerRegion,*string)

	// The ID of the requester VPC.
	peerVpcId?: null | string @go(PeerVPCID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The ID of the accepter VPC.
	vpcId?: null | string @go(VPCID,*string)
}

#VPCPeeringConnectionAccepterParameters: {
	// A configuration block that describes [VPC Peering Connection]
	// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
	// +kubebuilder:validation:Optional
	accepter?: [...#VPCPeeringConnectionAccepterAccepterParameters] @go(Accepter,[]VPCPeeringConnectionAccepterAccepterParameters)

	// Whether or not to accept the peering request. Defaults to false.
	// +kubebuilder:validation:Optional
	autoAccept?: null | bool @go(AutoAccept,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A configuration block that describes [VPC Peering Connection]
	// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
	// +kubebuilder:validation:Optional
	requester?: [...#VPCPeeringConnectionAccepterRequesterParameters] @go(Requester,[]VPCPeeringConnectionAccepterRequesterParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The VPC Peering Connection ID to manage.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPCPeeringConnection
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vpcPeeringConnectionId?: null | string @go(VPCPeeringConnectionID,*string)
}

#VPCPeeringConnectionAccepterRequesterObservation: {
}

#VPCPeeringConnectionAccepterRequesterParameters: {
	// Indicates whether a local ClassicLink connection can communicate
	// with the peer VPC over the VPC Peering Connection.
	// +kubebuilder:validation:Optional
	allowClassicLinkToRemoteVpc?: null | bool @go(AllowClassicLinkToRemoteVPC,*bool)

	// Indicates whether a local VPC can resolve public DNS hostnames to
	// private IP addresses when queried from instances in a peer VPC.
	// +kubebuilder:validation:Optional
	allowRemoteVpcDnsResolution?: null | bool @go(AllowRemoteVPCDNSResolution,*bool)

	// Indicates whether a local VPC can communicate with a ClassicLink
	// connection in the peer VPC over the VPC Peering Connection.
	// +kubebuilder:validation:Optional
	allowVpcToRemoteClassicLink?: null | bool @go(AllowVPCToRemoteClassicLink,*bool)
}

// VPCPeeringConnectionAccepterSpec defines the desired state of VPCPeeringConnectionAccepter
#VPCPeeringConnectionAccepterSpec: {
	forProvider: #VPCPeeringConnectionAccepterParameters @go(ForProvider)
}

// VPCPeeringConnectionAccepterStatus defines the observed state of VPCPeeringConnectionAccepter.
#VPCPeeringConnectionAccepterStatus: {
	atProvider?: #VPCPeeringConnectionAccepterObservation @go(AtProvider)
}

// VPCPeeringConnectionAccepter is the Schema for the VPCPeeringConnectionAccepters API. Manage the accepter's side of a VPC Peering Connection.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPCPeeringConnectionAccepter: {
	spec:    #VPCPeeringConnectionAccepterSpec   @go(Spec)
	status?: #VPCPeeringConnectionAccepterStatus @go(Status)
}

// VPCPeeringConnectionAccepterList contains a list of VPCPeeringConnectionAccepters
#VPCPeeringConnectionAccepterList: {
	items: [...#VPCPeeringConnectionAccepter] @go(Items,[]VPCPeeringConnectionAccepter)
}
