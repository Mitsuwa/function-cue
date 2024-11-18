// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/timeseriesinsights/v1beta1

package v1beta1

#EventSourceEventHubInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

#EventSourceEventHubObservation: {
	// Specifies the name of the EventHub Consumer Group that holds the partitions from which events will be read.
	consumerGroupName?: null | string @go(ConsumerGroupName,*string)

	// Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created.
	environmentId?: null | string @go(EnvironmentID,*string)

	// Specifies the name of the EventHub which will be associated with this resource.
	eventhubName?: null | string @go(EventHubName,*string)

	// Specifies the resource id where events will be coming from.
	eventSourceResourceId?: null | string @go(EventSourceResourceID,*string)

	// The ID of the IoT Time Series Insights EventHub Event Source.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the EventHub Namespace name.
	namespaceName?: null | string @go(NamespaceName,*string)

	// Specifies the name of the Shared Access key that grants the Event Source access to the EventHub.
	sharedAccessKeyName?: null | string @go(SharedAccessKeyName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

#EventSourceEventHubParameters: {
	// Specifies the name of the EventHub Consumer Group that holds the partitions from which events will be read.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.ConsumerGroup
	// +kubebuilder:validation:Optional
	consumerGroupName?: null | string @go(ConsumerGroupName,*string)

	// Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/timeseriesinsights/v1beta1.Gen2Environment
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	environmentId?: null | string @go(EnvironmentID,*string)

	// Specifies the name of the EventHub which will be associated with this resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.EventHub
	// +kubebuilder:validation:Optional
	eventhubName?: null | string @go(EventHubName,*string)

	// Specifies the resource id where events will be coming from.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.EventHub
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	eventSourceResourceId?: null | string @go(EventSourceResourceID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the EventHub Namespace name.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.EventHubNamespace
	// +kubebuilder:validation:Optional
	namespaceName?: null | string @go(NamespaceName,*string)

	// Specifies the name of the Shared Access key that grants the Event Source access to the EventHub.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.AuthorizationRule
	// +kubebuilder:validation:Optional
	sharedAccessKeyName?: null | string @go(SharedAccessKeyName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	// +kubebuilder:validation:Optional
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

// EventSourceEventHubSpec defines the desired state of EventSourceEventHub
#EventSourceEventHubSpec: {
	forProvider: #EventSourceEventHubParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #EventSourceEventHubInitParameters @go(InitProvider)
}

// EventSourceEventHubStatus defines the observed state of EventSourceEventHub.
#EventSourceEventHubStatus: {
	atProvider?: #EventSourceEventHubObservation @go(AtProvider)
}

// EventSourceEventHub is the Schema for the EventSourceEventHubs API. Manages an Azure IoT Time Series Insights EventHub Event Source.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#EventSourceEventHub: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sharedAccessKeySecretRef)",message="spec.forProvider.sharedAccessKeySecretRef is a required parameter"
	spec:    #EventSourceEventHubSpec   @go(Spec)
	status?: #EventSourceEventHubStatus @go(Status)
}

// EventSourceEventHubList contains a list of EventSourceEventHubs
#EventSourceEventHubList: {
	items: [...#EventSourceEventHub] @go(Items,[]EventSourceEventHub)
}
