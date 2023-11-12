// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#TagObservation: {
	// EC2 resource identifier and key, separated by a comma (,)
	id?: null | string @go(ID,*string)
}

#TagParameters: {
	// The tag name.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ID of the EC2 resource to manage the tag for.
	// +kubebuilder:validation:Required
	resourceId?: null | string @go(ResourceID,*string)

	// The value of the tag.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

// TagSpec defines the desired state of Tag
#TagSpec: {
	forProvider: #TagParameters @go(ForProvider)
}

// TagStatus defines the observed state of Tag.
#TagStatus: {
	atProvider?: #TagObservation @go(AtProvider)
}

// Tag is the Schema for the Tags API. Manages an individual EC2 resource tag
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Tag: {
	spec:    #TagSpec   @go(Spec)
	status?: #TagStatus @go(Status)
}

// TagList contains a list of Tags
#TagList: {
	items: [...#Tag] @go(Items,[]Tag)
}
