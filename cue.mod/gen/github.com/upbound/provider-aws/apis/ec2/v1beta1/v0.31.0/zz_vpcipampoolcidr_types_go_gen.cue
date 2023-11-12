// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#CidrAuthorizationContextObservation: {
}

#CidrAuthorizationContextParameters: {
	// The plain-text authorization message for the prefix and account.
	// +kubebuilder:validation:Optional
	message?: null | string @go(Message,*string)

	// The signed authorization message for the prefix and account.
	// +kubebuilder:validation:Optional
	signature?: null | string @go(Signature,*string)
}

#VPCIpamPoolCidrObservation: {
	// The ID of the IPAM Pool Cidr concatenated with the IPAM Pool ID.
	id?: null | string @go(ID,*string)

	// The unique ID generated by AWS for the pool cidr.
	ipamPoolCidrId?: null | string @go(IpamPoolCidrID,*string)
}

#VPCIpamPoolCidrParameters: {
	// The CIDR you want to assign to the pool. Conflicts with netmask_length.
	// +kubebuilder:validation:Optional
	cidr?: null | string @go(Cidr,*string)

	// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. This is not stored in the state file. See cidr_authorization_context for more information.
	// +kubebuilder:validation:Optional
	cidrAuthorizationContext?: [...#CidrAuthorizationContextParameters] @go(CidrAuthorizationContext,[]CidrAuthorizationContextParameters)

	// The ID of the pool to which you want to assign a CIDR.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPCIpamPool
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	ipamPoolId?: null | string @go(IpamPoolID,*string)

	// If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length. Conflicts with cidr.
	// +kubebuilder:validation:Optional
	netmaskLength?: null | float64 @go(NetmaskLength,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// VPCIpamPoolCidrSpec defines the desired state of VPCIpamPoolCidr
#VPCIpamPoolCidrSpec: {
	forProvider: #VPCIpamPoolCidrParameters @go(ForProvider)
}

// VPCIpamPoolCidrStatus defines the observed state of VPCIpamPoolCidr.
#VPCIpamPoolCidrStatus: {
	atProvider?: #VPCIpamPoolCidrObservation @go(AtProvider)
}

// VPCIpamPoolCidr is the Schema for the VPCIpamPoolCidrs API. Provisions a CIDR from an IPAM address pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPCIpamPoolCidr: {
	spec:    #VPCIpamPoolCidrSpec   @go(Spec)
	status?: #VPCIpamPoolCidrStatus @go(Status)
}

// VPCIpamPoolCidrList contains a list of VPCIpamPoolCidrs
#VPCIpamPoolCidrList: {
	items: [...#VPCIpamPoolCidr] @go(Items,[]VPCIpamPoolCidr)
}
