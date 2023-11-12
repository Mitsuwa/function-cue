// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/evidently/v1beta1

package v1beta1

#SegmentObservation: {
	// The ARN of the segment.
	arn?: null | string @go(Arn,*string)

	// The date and time that the segment is created.
	createdTime?: null | string @go(CreatedTime,*string)

	// The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
	experimentCount?: null | float64 @go(ExperimentCount,*float64)

	// The ID has the same value as the ARN of the segment.
	id?: null | string @go(ID,*string)

	// The date and time that this segment was most recently updated.
	lastUpdatedTime?: null | string @go(LastUpdatedTime,*string)

	// The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
	launchCount?: null | float64 @go(LaunchCount,*float64)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SegmentParameters: {
	// Specifies the description of the segment.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The pattern to use for the segment. For more information about pattern syntax, see Segment rule pattern syntax.
	// +kubebuilder:validation:Required
	pattern?: null | string @go(Pattern,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SegmentSpec defines the desired state of Segment
#SegmentSpec: {
	forProvider: #SegmentParameters @go(ForProvider)
}

// SegmentStatus defines the observed state of Segment.
#SegmentStatus: {
	atProvider?: #SegmentObservation @go(AtProvider)
}

// Segment is the Schema for the Segments API. Provides a CloudWatch Evidently Segment resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Segment: {
	spec:    #SegmentSpec   @go(Spec)
	status?: #SegmentStatus @go(Status)
}

// SegmentList contains a list of Segments
#SegmentList: {
	items: [...#Segment] @go(Items,[]Segment)
}
