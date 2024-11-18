// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cloudwatchevents/v1beta1

package v1beta1

#BusObservation: {
	// The Amazon Resource Name (ARN) of the event bus.
	arn?: null | string @go(Arn,*string)

	// The partner event source that the new event bus will be matched with. Must match name.
	eventSourceName?: null | string @go(EventSourceName,*string)
	id?:              null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#BusParameters: {
	// The partner event source that the new event bus will be matched with. Must match name.
	// +kubebuilder:validation:Optional
	eventSourceName?: null | string @go(EventSourceName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// BusSpec defines the desired state of Bus
#BusSpec: {
	forProvider: #BusParameters @go(ForProvider)
}

// BusStatus defines the observed state of Bus.
#BusStatus: {
	atProvider?: #BusObservation @go(AtProvider)
}

// Bus is the Schema for the Buss API. Provides an EventBridge event bus resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Bus: {
	spec:    #BusSpec   @go(Spec)
	status?: #BusStatus @go(Status)
}

// BusList contains a list of Buss
#BusList: {
	items: [...#Bus] @go(Items,[]Bus)
}
