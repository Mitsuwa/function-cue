// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#VPNGatewayObservation_2: {
	// Amazon Resource Name (ARN) of the VPN Gateway.
	arn?: null | string @go(Arn,*string)

	// The ID of the VPN Gateway.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#VPNGatewayParameters_2: {
	// The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
	// +kubebuilder:validation:Optional
	amazonSideAsn?: null | string @go(AmazonSideAsn,*string)

	// The Availability Zone for the virtual private gateway.
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The VPC ID to create in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)
}

// VPNGatewaySpec defines the desired state of VPNGateway
#VPNGatewaySpec: {
	forProvider: #VPNGatewayParameters_2 @go(ForProvider)
}

// VPNGatewayStatus defines the observed state of VPNGateway.
#VPNGatewayStatus: {
	atProvider?: #VPNGatewayObservation_2 @go(AtProvider)
}

// VPNGateway is the Schema for the VPNGateways API. Provides a resource to create a VPC VPN Gateway.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPNGateway: {
	spec:    #VPNGatewaySpec   @go(Spec)
	status?: #VPNGatewayStatus @go(Status)
}

// VPNGatewayList contains a list of VPNGateways
#VPNGatewayList: {
	items: [...#VPNGateway] @go(Items,[]VPNGateway)
}
