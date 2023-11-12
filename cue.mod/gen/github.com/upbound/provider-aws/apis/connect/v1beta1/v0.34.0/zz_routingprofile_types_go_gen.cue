// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/connect/v1beta1

package v1beta1

#MediaConcurrenciesObservation: {
	// Specifies the channels that agents can handle in the Contact Control Panel (CCP). Valid values are VOICE, CHAT, TASK.
	channel?: null | string @go(Channel,*string)

	// Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.
	concurrency?: null | float64 @go(Concurrency,*float64)
}

#MediaConcurrenciesParameters: {
	// Specifies the channels that agents can handle in the Contact Control Panel (CCP). Valid values are VOICE, CHAT, TASK.
	// +kubebuilder:validation:Required
	channel?: null | string @go(Channel,*string)

	// Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.
	// +kubebuilder:validation:Required
	concurrency?: null | float64 @go(Concurrency,*float64)
}

#QueueConfigsAssociatedObservation: {
	// Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK.
	channel?: null | string @go(Channel,*string)

	// Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
	delay?: null | float64 @go(Delay,*float64)

	// Specifies the order in which contacts are to be handled for the queue.
	priority?: null | float64 @go(Priority,*float64)

	// ARN for the queue.
	queueArn?: null | string @go(QueueArn,*string)

	// Specifies the identifier for the queue.
	queueId?: null | string @go(QueueID,*string)

	// Name for the queue.
	queueName?: null | string @go(QueueName,*string)
}

#QueueConfigsAssociatedParameters: {
}

#QueueConfigsObservation: {
	// Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK.
	channel?: null | string @go(Channel,*string)

	// Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
	delay?: null | float64 @go(Delay,*float64)

	// Specifies the order in which contacts are to be handled for the queue.
	priority?: null | float64 @go(Priority,*float64)

	// ARN for the queue.
	queueArn?: null | string @go(QueueArn,*string)

	// Specifies the identifier for the queue.
	queueId?: null | string @go(QueueID,*string)

	// Name for the queue.
	queueName?: null | string @go(QueueName,*string)
}

#QueueConfigsParameters: {
	// Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK.
	// +kubebuilder:validation:Required
	channel?: null | string @go(Channel,*string)

	// Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
	// +kubebuilder:validation:Required
	delay?: null | float64 @go(Delay,*float64)

	// Specifies the order in which contacts are to be handled for the queue.
	// +kubebuilder:validation:Required
	priority?: null | float64 @go(Priority,*float64)

	// Specifies the identifier for the queue.
	// +kubebuilder:validation:Required
	queueId?: null | string @go(QueueID,*string)
}

#RoutingProfileObservation: {
	// The Amazon Resource Name (ARN) of the Routing Profile.
	arn?: null | string @go(Arn,*string)

	// Specifies the default outbound queue for the Routing Profile.
	defaultOutboundQueueId?: null | string @go(DefaultOutboundQueueID,*string)

	// Specifies the description of the Routing Profile.
	description?: null | string @go(Description,*string)

	// The identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:).
	id?: null | string @go(ID,*string)

	// Specifies the identifier of the hosting Amazon Connect Instance.
	instanceId?: null | string @go(InstanceID,*string)

	// One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below.
	mediaConcurrencies?: [...#MediaConcurrenciesObservation] @go(MediaConcurrencies,[]MediaConcurrenciesObservation)

	// Specifies the name of the Routing Profile.
	name?: null | string @go(Name,*string)

	// One or more queue_configs blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The queue_configs block is documented below.
	queueConfigs?: [...#QueueConfigsObservation] @go(QueueConfigs,[]QueueConfigsObservation)
	queueConfigsAssociated?: [...#QueueConfigsAssociatedObservation] @go(QueueConfigsAssociated,[]QueueConfigsAssociatedObservation)

	// The identifier for the Routing Profile.
	routingProfileId?: null | string @go(RoutingProfileID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#RoutingProfileParameters: {
	// Specifies the default outbound queue for the Routing Profile.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/connect/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("queue_id",true)
	// +kubebuilder:validation:Optional
	defaultOutboundQueueId?: null | string @go(DefaultOutboundQueueID,*string)

	// Specifies the description of the Routing Profile.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the identifier of the hosting Amazon Connect Instance.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/connect/v1beta1.Instance
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	instanceId?: null | string @go(InstanceID,*string)

	// One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below.
	// +kubebuilder:validation:Optional
	mediaConcurrencies?: [...#MediaConcurrenciesParameters] @go(MediaConcurrencies,[]MediaConcurrenciesParameters)

	// Specifies the name of the Routing Profile.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// One or more queue_configs blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The queue_configs block is documented below.
	// +kubebuilder:validation:Optional
	queueConfigs?: [...#QueueConfigsParameters] @go(QueueConfigs,[]QueueConfigsParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// RoutingProfileSpec defines the desired state of RoutingProfile
#RoutingProfileSpec: {
	forProvider: #RoutingProfileParameters @go(ForProvider)
}

// RoutingProfileStatus defines the observed state of RoutingProfile.
#RoutingProfileStatus: {
	atProvider?: #RoutingProfileObservation @go(AtProvider)
}

// RoutingProfile is the Schema for the RoutingProfiles API. Provides details about a specific Amazon Connect Routing Profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RoutingProfile: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.description)",message="description is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.mediaConcurrencies)",message="mediaConcurrencies is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #RoutingProfileSpec   @go(Spec)
	status?: #RoutingProfileStatus @go(Status)
}

// RoutingProfileList contains a list of RoutingProfiles
#RoutingProfileList: {
	items: [...#RoutingProfile] @go(Items,[]RoutingProfile)
}
