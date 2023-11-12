// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/dms/v1beta1

package v1beta1

#EventSubscriptionObservation: {
	// Amazon Resource Name (ARN) of the DMS Event Subscription.
	arn?: null | string @go(Arn,*string)

	// Whether the event subscription should be enabled.
	enabled?: null | bool @go(Enabled,*bool)

	// List of event categories to listen for, see DescribeEventCategories for a canonical list.
	eventCategories?: [...null | string] @go(EventCategories,[]*string)
	id?: null | string @go(ID,*string)

	// SNS topic arn to send events on.
	snsTopicArn?: null | string @go(SnsTopicArn,*string)

	// Ids of sources to listen to.
	sourceIds?: [...null | string] @go(SourceIds,[]*string)

	// Type of source for events. Valid values: replication-instance or replication-task
	sourceType?: null | string @go(SourceType,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#EventSubscriptionParameters: {
	// Whether the event subscription should be enabled.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// List of event categories to listen for, see DescribeEventCategories for a canonical list.
	// +kubebuilder:validation:Optional
	eventCategories?: [...null | string] @go(EventCategories,[]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// SNS topic arn to send events on.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	snsTopicArn?: null | string @go(SnsTopicArn,*string)

	// Ids of sources to listen to.
	// +kubebuilder:validation:Optional
	sourceIds?: [...null | string] @go(SourceIds,[]*string)

	// Type of source for events. Valid values: replication-instance or replication-task
	// +kubebuilder:validation:Optional
	sourceType?: null | string @go(SourceType,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// EventSubscriptionSpec defines the desired state of EventSubscription
#EventSubscriptionSpec: {
	forProvider: #EventSubscriptionParameters @go(ForProvider)
}

// EventSubscriptionStatus defines the observed state of EventSubscription.
#EventSubscriptionStatus: {
	atProvider?: #EventSubscriptionObservation @go(AtProvider)
}

// EventSubscription is the Schema for the EventSubscriptions API. Provides a DMS (Data Migration Service) event subscription resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#EventSubscription: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.eventCategories)",message="eventCategories is a required parameter"
	spec:    #EventSubscriptionSpec   @go(Spec)
	status?: #EventSubscriptionStatus @go(Status)
}

// EventSubscriptionList contains a list of EventSubscriptions
#EventSubscriptionList: {
	items: [...#EventSubscription] @go(Items,[]EventSubscription)
}
