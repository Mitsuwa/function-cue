// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iot/v1beta1

package v1beta1

#ThingPrincipalAttachmentObservation: {
	id?: null | string @go(ID,*string)
}

#ThingPrincipalAttachmentParameters: {
	// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iot/v1beta1.Certificate
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	principal?: null | string @go(Principal,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The name of the thing.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iot/v1beta1.Thing
	// +kubebuilder:validation:Optional
	thing?: null | string @go(Thing,*string)
}

// ThingPrincipalAttachmentSpec defines the desired state of ThingPrincipalAttachment
#ThingPrincipalAttachmentSpec: {
	forProvider: #ThingPrincipalAttachmentParameters @go(ForProvider)
}

// ThingPrincipalAttachmentStatus defines the observed state of ThingPrincipalAttachment.
#ThingPrincipalAttachmentStatus: {
	atProvider?: #ThingPrincipalAttachmentObservation @go(AtProvider)
}

// ThingPrincipalAttachment is the Schema for the ThingPrincipalAttachments API. Provides AWS IoT Thing Principal attachment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ThingPrincipalAttachment: {
	spec:    #ThingPrincipalAttachmentSpec   @go(Spec)
	status?: #ThingPrincipalAttachmentStatus @go(Status)
}

// ThingPrincipalAttachmentList contains a list of ThingPrincipalAttachments
#ThingPrincipalAttachmentList: {
	items: [...#ThingPrincipalAttachment] @go(Items,[]ThingPrincipalAttachment)
}
