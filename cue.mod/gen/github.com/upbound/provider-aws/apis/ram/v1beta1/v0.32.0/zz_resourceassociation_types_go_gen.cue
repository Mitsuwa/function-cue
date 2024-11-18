// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ram/v1beta1

package v1beta1

#ResourceAssociationObservation: {
	// The Amazon Resource Name (ARN) of the resource share.
	id?: null | string @go(ID,*string)
}

#ResourceAssociationParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	resourceArn?: null | string @go(ResourceArn,*string)

	// Amazon Resource Name (ARN) of the RAM Resource Share.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ram/v1beta1.ResourceShare
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	resourceShareArn?: null | string @go(ResourceShareArn,*string)
}

// ResourceAssociationSpec defines the desired state of ResourceAssociation
#ResourceAssociationSpec: {
	forProvider: #ResourceAssociationParameters @go(ForProvider)
}

// ResourceAssociationStatus defines the observed state of ResourceAssociation.
#ResourceAssociationStatus: {
	atProvider?: #ResourceAssociationObservation @go(AtProvider)
}

// ResourceAssociation is the Schema for the ResourceAssociations API. Manages a Resource Access Manager (RAM) Resource Association.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ResourceAssociation: {
	spec:    #ResourceAssociationSpec   @go(Spec)
	status?: #ResourceAssociationStatus @go(Status)
}

// ResourceAssociationList contains a list of ResourceAssociations
#ResourceAssociationList: {
	items: [...#ResourceAssociation] @go(Items,[]ResourceAssociation)
}
