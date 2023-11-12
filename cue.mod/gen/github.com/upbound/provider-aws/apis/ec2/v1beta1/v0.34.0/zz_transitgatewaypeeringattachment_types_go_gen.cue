// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#TransitGatewayPeeringAttachmentObservation: {
	// EC2 Transit Gateway Attachment identifier
	id?: null | string @go(ID,*string)

	// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
	peerAccountId?: null | string @go(PeerAccountID,*string)

	// Region of EC2 Transit Gateway to peer with.
	peerRegion?: null | string @go(PeerRegion,*string)

	// Identifier of EC2 Transit Gateway to peer with.
	peerTransitGatewayId?: null | string @go(PeerTransitGatewayID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Identifier of EC2 Transit Gateway.
	transitGatewayId?: null | string @go(TransitGatewayID,*string)
}

#TransitGatewayPeeringAttachmentParameters: {
	// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
	// +kubebuilder:validation:Optional
	peerAccountId?: null | string @go(PeerAccountID,*string)

	// Region of EC2 Transit Gateway to peer with.
	// +kubebuilder:validation:Optional
	peerRegion?: null | string @go(PeerRegion,*string)

	// Identifier of EC2 Transit Gateway to peer with.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.TransitGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	peerTransitGatewayId?: null | string @go(PeerTransitGatewayID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Identifier of EC2 Transit Gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.TransitGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	transitGatewayId?: null | string @go(TransitGatewayID,*string)
}

// TransitGatewayPeeringAttachmentSpec defines the desired state of TransitGatewayPeeringAttachment
#TransitGatewayPeeringAttachmentSpec: {
	forProvider: #TransitGatewayPeeringAttachmentParameters @go(ForProvider)
}

// TransitGatewayPeeringAttachmentStatus defines the observed state of TransitGatewayPeeringAttachment.
#TransitGatewayPeeringAttachmentStatus: {
	atProvider?: #TransitGatewayPeeringAttachmentObservation @go(AtProvider)
}

// TransitGatewayPeeringAttachment is the Schema for the TransitGatewayPeeringAttachments API. Manages an EC2 Transit Gateway Peering Attachment
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#TransitGatewayPeeringAttachment: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.peerRegion)",message="peerRegion is a required parameter"
	spec:    #TransitGatewayPeeringAttachmentSpec   @go(Spec)
	status?: #TransitGatewayPeeringAttachmentStatus @go(Status)
}

// TransitGatewayPeeringAttachmentList contains a list of TransitGatewayPeeringAttachments
#TransitGatewayPeeringAttachmentList: {
	items: [...#TransitGatewayPeeringAttachment] @go(Items,[]TransitGatewayPeeringAttachment)
}
