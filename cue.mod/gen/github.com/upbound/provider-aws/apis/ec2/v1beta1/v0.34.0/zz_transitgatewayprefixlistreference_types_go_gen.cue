// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#TransitGatewayPrefixListReferenceObservation: {
	// Indicates whether to drop traffic that matches the Prefix List. Defaults to false.
	blackhole?: null | bool @go(Blackhole,*bool)

	// EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore (_)
	id?: null | string @go(ID,*string)

	// Identifier of EC2 Prefix List.
	prefixListId?: null | string @go(PrefixListID,*string)

	// EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore (_)
	prefixListOwnerId?: null | string @go(PrefixListOwnerID,*string)

	// Identifier of EC2 Transit Gateway Attachment.
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// Identifier of EC2 Transit Gateway Route Table.
	transitGatewayRouteTableId?: null | string @go(TransitGatewayRouteTableID,*string)
}

#TransitGatewayPrefixListReferenceParameters: {
	// Indicates whether to drop traffic that matches the Prefix List. Defaults to false.
	// +kubebuilder:validation:Optional
	blackhole?: null | bool @go(Blackhole,*bool)

	// Identifier of EC2 Prefix List.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.ManagedPrefixList
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	prefixListId?: null | string @go(PrefixListID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Identifier of EC2 Transit Gateway Attachment.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.TransitGatewayVPCAttachment
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// Identifier of EC2 Transit Gateway Route Table.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.TransitGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("association_default_route_table_id",true)
	// +kubebuilder:validation:Optional
	transitGatewayRouteTableId?: null | string @go(TransitGatewayRouteTableID,*string)
}

// TransitGatewayPrefixListReferenceSpec defines the desired state of TransitGatewayPrefixListReference
#TransitGatewayPrefixListReferenceSpec: {
	forProvider: #TransitGatewayPrefixListReferenceParameters @go(ForProvider)
}

// TransitGatewayPrefixListReferenceStatus defines the observed state of TransitGatewayPrefixListReference.
#TransitGatewayPrefixListReferenceStatus: {
	atProvider?: #TransitGatewayPrefixListReferenceObservation @go(AtProvider)
}

// TransitGatewayPrefixListReference is the Schema for the TransitGatewayPrefixListReferences API. Manages an EC2 Transit Gateway Prefix List Reference
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#TransitGatewayPrefixListReference: {
	spec:    #TransitGatewayPrefixListReferenceSpec   @go(Spec)
	status?: #TransitGatewayPrefixListReferenceStatus @go(Status)
}

// TransitGatewayPrefixListReferenceList contains a list of TransitGatewayPrefixListReferences
#TransitGatewayPrefixListReferenceList: {
	items: [...#TransitGatewayPrefixListReference] @go(Items,[]TransitGatewayPrefixListReference)
}
