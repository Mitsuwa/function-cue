// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cloudwatchevents/v1beta1

package v1beta1

#ArchiveObservation: {
	// The Amazon Resource Name (ARN) of the event archive.
	arn?: null | string @go(Arn,*string)

	// The description of the new event archive.
	description?: null | string @go(Description,*string)

	// Instructs the new event archive to only capture events matched by this pattern. By default, it attempts to archive every event received in the event_source_arn.
	eventPattern?: null | string @go(EventPattern,*string)

	// Event bus source ARN from where these events should be archived.
	eventSourceArn?: null | string @go(EventSourceArn,*string)
	id?:             null | string @go(ID,*string)

	// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

#ArchiveParameters: {
	// The description of the new event archive.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Instructs the new event archive to only capture events matched by this pattern. By default, it attempts to archive every event received in the event_source_arn.
	// +kubebuilder:validation:Optional
	eventPattern?: null | string @go(EventPattern,*string)

	// Event bus source ARN from where these events should be archived.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/cloudwatchevents/v1beta1.Bus
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	eventSourceArn?: null | string @go(EventSourceArn,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
	// +kubebuilder:validation:Optional
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

// ArchiveSpec defines the desired state of Archive
#ArchiveSpec: {
	forProvider: #ArchiveParameters @go(ForProvider)
}

// ArchiveStatus defines the observed state of Archive.
#ArchiveStatus: {
	atProvider?: #ArchiveObservation @go(AtProvider)
}

// Archive is the Schema for the Archives API. Provides an EventBridge event archive resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Archive: {
	spec:    #ArchiveSpec   @go(Spec)
	status?: #ArchiveStatus @go(Status)
}

// ArchiveList contains a list of Archives
#ArchiveList: {
	items: [...#Archive] @go(Items,[]Archive)
}
