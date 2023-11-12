// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/servicebus/v1beta1

package v1beta1

#TopicInitParameters: {
	// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (PT10M)
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls if server-side batched operations are enabled.
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable Changing this forces a new resource to be created.
	// the topic to be partitioned across multiple message brokers. Defaults to false.
	// Changing this forces a new resource to be created.
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of this document.
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of this document.
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// Boolean flag which controls whether Changing this forces a new resource to be created.
	// the Topic requires duplicate detection. Defaults to false. Changing this forces
	// a new resource to be created.
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// The Status of the Service Bus Topic. Acceptable values are Active or Disabled. Defaults to Active.
	status?: null | string @go(Status,*string)

	// Boolean flag which controls whether the Topic supports ordering.
	supportOrdering?: null | bool @go(SupportOrdering,*bool)
}

#TopicObservation: {
	// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (PT10M)
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls if server-side batched operations are enabled.
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable Changing this forces a new resource to be created.
	// the topic to be partitioned across multiple message brokers. Defaults to false.
	// Changing this forces a new resource to be created.
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// The ServiceBus Topic ID.
	id?: null | string @go(ID,*string)

	// Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of this document.
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of this document.
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// The ID of the ServiceBus Namespace to create Changing this forces a new resource to be created.
	// this topic in. Changing this forces a new resource to be created.
	namespaceId?: null | string @go(NamespaceID,*string)

	// Boolean flag which controls whether Changing this forces a new resource to be created.
	// the Topic requires duplicate detection. Defaults to false. Changing this forces
	// a new resource to be created.
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// The Status of the Service Bus Topic. Acceptable values are Active or Disabled. Defaults to Active.
	status?: null | string @go(Status,*string)

	// Boolean flag which controls whether the Topic supports ordering.
	supportOrdering?: null | bool @go(SupportOrdering,*bool)
}

#TopicParameters: {
	// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
	// +kubebuilder:validation:Optional
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
	// +kubebuilder:validation:Optional
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. (PT10M)
	// +kubebuilder:validation:Optional
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls if server-side batched operations are enabled.
	// +kubebuilder:validation:Optional
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
	// +kubebuilder:validation:Optional
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable Changing this forces a new resource to be created.
	// the topic to be partitioned across multiple message brokers. Defaults to false.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of this document.
	// +kubebuilder:validation:Optional
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of this document.
	// +kubebuilder:validation:Optional
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// The ID of the ServiceBus Namespace to create Changing this forces a new resource to be created.
	// this topic in. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/servicebus/v1beta1.ServiceBusNamespace
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	namespaceId?: null | string @go(NamespaceID,*string)

	// Boolean flag which controls whether Changing this forces a new resource to be created.
	// the Topic requires duplicate detection. Defaults to false. Changing this forces
	// a new resource to be created.
	// +kubebuilder:validation:Optional
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// The Status of the Service Bus Topic. Acceptable values are Active or Disabled. Defaults to Active.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)

	// Boolean flag which controls whether the Topic supports ordering.
	// +kubebuilder:validation:Optional
	supportOrdering?: null | bool @go(SupportOrdering,*bool)
}

// TopicSpec defines the desired state of Topic
#TopicSpec: {
	forProvider: #TopicParameters @go(ForProvider)

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
	initProvider?: #TopicInitParameters @go(InitProvider)
}

// TopicStatus defines the observed state of Topic.
#TopicStatus: {
	atProvider?: #TopicObservation @go(AtProvider)
}

// Topic is the Schema for the Topics API. Manages a ServiceBus Topic.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Topic: {
	spec:    #TopicSpec   @go(Spec)
	status?: #TopicStatus @go(Status)
}

// TopicList contains a list of Topics
#TopicList: {
	items: [...#Topic] @go(Items,[]Topic)
}
