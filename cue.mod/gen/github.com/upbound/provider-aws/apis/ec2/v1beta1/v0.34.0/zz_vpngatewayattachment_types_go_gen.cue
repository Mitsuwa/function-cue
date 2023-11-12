// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#VPNGatewayAttachmentObservation: {
	id?: null | string @go(ID,*string)

	// The ID of the VPC.
	vpcId?: null | string @go(VPCID,*string)

	// The ID of the Virtual Private Gateway.
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)
}

#VPNGatewayAttachmentParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ID of the VPC.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)

	// The ID of the Virtual Private Gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPNGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)
}

// VPNGatewayAttachmentSpec defines the desired state of VPNGatewayAttachment
#VPNGatewayAttachmentSpec: {
	forProvider: #VPNGatewayAttachmentParameters @go(ForProvider)
}

// VPNGatewayAttachmentStatus defines the observed state of VPNGatewayAttachment.
#VPNGatewayAttachmentStatus: {
	atProvider?: #VPNGatewayAttachmentObservation @go(AtProvider)
}

// VPNGatewayAttachment is the Schema for the VPNGatewayAttachments API. Provides a Virtual Private Gateway attachment resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPNGatewayAttachment: {
	spec:    #VPNGatewayAttachmentSpec   @go(Spec)
	status?: #VPNGatewayAttachmentStatus @go(Status)
}

// VPNGatewayAttachmentList contains a list of VPNGatewayAttachments
#VPNGatewayAttachmentList: {
	items: [...#VPNGatewayAttachment] @go(Items,[]VPNGatewayAttachment)
}
