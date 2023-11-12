// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/eventgrid/v1beta1

package v1beta1

#DomainObservation: {
	// Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to true.
	autoCreateTopicWithFirstSubscription?: null | bool @go(AutoCreateTopicWithFirstSubscription,*bool)

	// Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to true.
	autoDeleteTopicWithLastSubscription?: null | bool @go(AutoDeleteTopicWithLastSubscription,*bool)

	// The Endpoint associated with the EventGrid Domain.
	endpoint?: null | string @go(Endpoint,*string)

	// The ID of the EventGrid Domain.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// One or more inbound_ip_rule blocks as defined below.
	inboundIpRule?: [...#InboundIPRuleObservation] @go(InboundIPRule,[]InboundIPRuleObservation)

	// A input_mapping_default_values block as defined below. Changing this forces a new resource to be created.
	inputMappingDefaultValues?: [...#InputMappingDefaultValuesObservation] @go(InputMappingDefaultValues,[]InputMappingDefaultValuesObservation)

	// A input_mapping_fields block as defined below. Changing this forces a new resource to be created.
	inputMappingFields?: [...#InputMappingFieldsObservation] @go(InputMappingFields,[]InputMappingFieldsObservation)

	// Specifies the schema in which incoming events will be published to this domain. Allowed values are CloudEventSchemaV1_0, CustomEventSchema, or EventGridSchema. Defaults to eventgridschema. Changing this forces a new resource to be created.
	inputSchema?: null | string @go(InputSchema,*string)

	// Whether local authentication methods is enabled for the EventGrid Domain. Defaults to true.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Whether or not public network access is allowed for this server. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#DomainParameters: {
	// Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to true.
	// +kubebuilder:validation:Optional
	autoCreateTopicWithFirstSubscription?: null | bool @go(AutoCreateTopicWithFirstSubscription,*bool)

	// Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to true.
	// +kubebuilder:validation:Optional
	autoDeleteTopicWithLastSubscription?: null | bool @go(AutoDeleteTopicWithLastSubscription,*bool)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// One or more inbound_ip_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	inboundIpRule?: [...#InboundIPRuleParameters] @go(InboundIPRule,[]InboundIPRuleParameters)

	// A input_mapping_default_values block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	inputMappingDefaultValues?: [...#InputMappingDefaultValuesParameters] @go(InputMappingDefaultValues,[]InputMappingDefaultValuesParameters)

	// A input_mapping_fields block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	inputMappingFields?: [...#InputMappingFieldsParameters] @go(InputMappingFields,[]InputMappingFieldsParameters)

	// Specifies the schema in which incoming events will be published to this domain. Allowed values are CloudEventSchemaV1_0, CustomEventSchema, or EventGridSchema. Defaults to eventgridschema. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	inputSchema?: null | string @go(InputSchema,*string)

	// Whether local authentication methods is enabled for the EventGrid Domain. Defaults to true.
	// +kubebuilder:validation:Optional
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Whether or not public network access is allowed for this server. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Domain.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Grid Domain. Possible values are SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Domain.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Event Grid Domain. Possible values are SystemAssigned, UserAssigned.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#InboundIPRuleObservation: {
	// The action to take when the rule is matched. Possible values are Allow.
	action?: null | string @go(Action,*string)

	// The IP mask (CIDR) to match on.
	ipMask?: null | string @go(IPMask,*string)
}

#InboundIPRuleParameters: {
	// The action to take when the rule is matched. Possible values are Allow.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// The IP mask (CIDR) to match on.
	// +kubebuilder:validation:Optional
	ipMask?: null | string @go(IPMask,*string)
}

#InputMappingDefaultValuesObservation: {
	// Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	dataVersion?: null | string @go(DataVersion,*string)

	// Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	eventType?: null | string @go(EventType,*string)

	// Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	subject?: null | string @go(Subject,*string)
}

#InputMappingDefaultValuesParameters: {
	// Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	dataVersion?: null | string @go(DataVersion,*string)

	// Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	eventType?: null | string @go(EventType,*string)

	// Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subject?: null | string @go(Subject,*string)
}

#InputMappingFieldsObservation: {
	// Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	dataVersion?: null | string @go(DataVersion,*string)

	// Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	eventTime?: null | string @go(EventTime,*string)

	// Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	eventType?: null | string @go(EventType,*string)

	// Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	id?: null | string @go(ID,*string)

	// Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	subject?: null | string @go(Subject,*string)

	// Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	topic?: null | string @go(Topic,*string)
}

#InputMappingFieldsParameters: {
	// Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	dataVersion?: null | string @go(DataVersion,*string)

	// Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	eventTime?: null | string @go(EventTime,*string)

	// Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	eventType?: null | string @go(EventType,*string)

	// Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subject?: null | string @go(Subject,*string)

	// Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	topic?: null | string @go(Topic,*string)
}

// DomainSpec defines the desired state of Domain
#DomainSpec: {
	forProvider: #DomainParameters @go(ForProvider)
}

// DomainStatus defines the observed state of Domain.
#DomainStatus: {
	atProvider?: #DomainObservation @go(AtProvider)
}

// Domain is the Schema for the Domains API. Manages an EventGrid Domain
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Domain: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #DomainSpec   @go(Spec)
	status?: #DomainStatus @go(Status)
}

// DomainList contains a list of Domains
#DomainList: {
	items: [...#Domain] @go(Items,[]Domain)
}
