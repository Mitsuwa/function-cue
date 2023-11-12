// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/servicebus/v1beta1

package v1beta1

#QueueInitParameters: {
	// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false.
	deadLetteringOnMessageExpiration?: null | bool @go(DeadLetteringOnMessageExpiration,*bool)

	// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M).
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls whether server-side batched operations are enabled. Defaults to true.
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false.
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard.
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// The name of a Queue or Topic to automatically forward dead lettered messages to.
	forwardDeadLetteredMessagesTo?: null | string @go(ForwardDeadLetteredMessagesTo,*string)

	// The name of a Queue or Topic to automatically forward messages to. Please see the documentation for more information.
	forwardTo?: null | string @go(ForwardTo,*string)

	// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M).
	lockDuration?: null | string @go(LockDuration,*string)

	// Integer value which controls when a message is automatically dead lettered. Defaults to 10.
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of this document.
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of Service Bus Quotas. Defaults to 1024.
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false.
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false.
	requiresSession?: null | bool @go(RequiresSession,*bool)

	// The status of the Queue. Possible values are Active, Creating, Deleting, Disabled, ReceiveDisabled, Renaming, SendDisabled, Unknown. Note that Restoring is not accepted. Defaults to Active.
	status?: null | string @go(Status,*string)
}

#QueueObservation: {
	// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false.
	deadLetteringOnMessageExpiration?: null | bool @go(DeadLetteringOnMessageExpiration,*bool)

	// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M).
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls whether server-side batched operations are enabled. Defaults to true.
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false.
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard.
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// The name of a Queue or Topic to automatically forward dead lettered messages to.
	forwardDeadLetteredMessagesTo?: null | string @go(ForwardDeadLetteredMessagesTo,*string)

	// The name of a Queue or Topic to automatically forward messages to. Please see the documentation for more information.
	forwardTo?: null | string @go(ForwardTo,*string)

	// The ServiceBus Queue ID.
	id?: null | string @go(ID,*string)

	// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M).
	lockDuration?: null | string @go(LockDuration,*string)

	// Integer value which controls when a message is automatically dead lettered. Defaults to 10.
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of this document.
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of Service Bus Quotas. Defaults to 1024.
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created.
	namespaceId?: null | string @go(NamespaceID,*string)

	// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false.
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false.
	requiresSession?: null | bool @go(RequiresSession,*bool)

	// The status of the Queue. Possible values are Active, Creating, Deleting, Disabled, ReceiveDisabled, Renaming, SendDisabled, Unknown. Note that Restoring is not accepted. Defaults to Active.
	status?: null | string @go(Status,*string)
}

#QueueParameters: {
	// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
	// +kubebuilder:validation:Optional
	autoDeleteOnIdle?: null | string @go(AutoDeleteOnIdle,*string)

	// Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false.
	// +kubebuilder:validation:Optional
	deadLetteringOnMessageExpiration?: null | bool @go(DeadLetteringOnMessageExpiration,*bool)

	// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
	// +kubebuilder:validation:Optional
	defaultMessageTtl?: null | string @go(DefaultMessageTTL,*string)

	// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M).
	// +kubebuilder:validation:Optional
	duplicateDetectionHistoryTimeWindow?: null | string @go(DuplicateDetectionHistoryTimeWindow,*string)

	// Boolean flag which controls whether server-side batched operations are enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	enableBatchedOperations?: null | bool @go(EnableBatchedOperations,*bool)

	// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false.
	// +kubebuilder:validation:Optional
	enableExpress?: null | bool @go(EnableExpress,*bool)

	// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard.
	// +kubebuilder:validation:Optional
	enablePartitioning?: null | bool @go(EnablePartitioning,*bool)

	// The name of a Queue or Topic to automatically forward dead lettered messages to.
	// +kubebuilder:validation:Optional
	forwardDeadLetteredMessagesTo?: null | string @go(ForwardDeadLetteredMessagesTo,*string)

	// The name of a Queue or Topic to automatically forward messages to. Please see the documentation for more information.
	// +kubebuilder:validation:Optional
	forwardTo?: null | string @go(ForwardTo,*string)

	// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M).
	// +kubebuilder:validation:Optional
	lockDuration?: null | string @go(LockDuration,*string)

	// Integer value which controls when a message is automatically dead lettered. Defaults to 10.
	// +kubebuilder:validation:Optional
	maxDeliveryCount?: null | float64 @go(MaxDeliveryCount,*float64)

	// Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of this document.
	// +kubebuilder:validation:Optional
	maxMessageSizeInKilobytes?: null | float64 @go(MaxMessageSizeInKilobytes,*float64)

	// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of Service Bus Quotas. Defaults to 1024.
	// +kubebuilder:validation:Optional
	maxSizeInMegabytes?: null | float64 @go(MaxSizeInMegabytes,*float64)

	// The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/servicebus/v1beta1.ServiceBusNamespace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	namespaceId?: null | string @go(NamespaceID,*string)

	// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false.
	// +kubebuilder:validation:Optional
	requiresDuplicateDetection?: null | bool @go(RequiresDuplicateDetection,*bool)

	// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false.
	// +kubebuilder:validation:Optional
	requiresSession?: null | bool @go(RequiresSession,*bool)

	// The status of the Queue. Possible values are Active, Creating, Deleting, Disabled, ReceiveDisabled, Renaming, SendDisabled, Unknown. Note that Restoring is not accepted. Defaults to Active.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)
}

// QueueSpec defines the desired state of Queue
#QueueSpec: {
	forProvider: #QueueParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #QueueInitParameters @go(InitProvider)
}

// QueueStatus defines the observed state of Queue.
#QueueStatus: {
	atProvider?: #QueueObservation @go(AtProvider)
}

// Queue is the Schema for the Queues API. Manages a ServiceBus Queue.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Queue: {
	spec:    #QueueSpec   @go(Spec)
	status?: #QueueStatus @go(Status)
}

// QueueList contains a list of Queues
#QueueList: {
	items: [...#Queue] @go(Items,[]Queue)
}
