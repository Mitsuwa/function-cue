// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/servicebus/v1beta1

package v1beta1

#QueueAuthorizationRuleInitParameters: {
	// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to false.
	listen?: null | bool @go(Listen,*bool)

	// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is true - both listen and send must be too. Defaults to false.
	manage?: null | bool @go(Manage,*bool)

	// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to false.
	send?: null | bool @go(Send,*bool)
}

#QueueAuthorizationRuleObservation: {
	// The ID of the Authorization Rule.
	id?: null | string @go(ID,*string)

	// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to false.
	listen?: null | bool @go(Listen,*bool)

	// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is true - both listen and send must be too. Defaults to false.
	manage?: null | bool @go(Manage,*bool)

	// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
	queueId?: null | string @go(QueueID,*string)

	// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to false.
	send?: null | bool @go(Send,*bool)
}

#QueueAuthorizationRuleParameters: {
	// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to false.
	// +kubebuilder:validation:Optional
	listen?: null | bool @go(Listen,*bool)

	// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is true - both listen and send must be too. Defaults to false.
	// +kubebuilder:validation:Optional
	manage?: null | bool @go(Manage,*bool)

	// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/servicebus/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	queueId?: null | string @go(QueueID,*string)

	// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to false.
	// +kubebuilder:validation:Optional
	send?: null | bool @go(Send,*bool)
}

// QueueAuthorizationRuleSpec defines the desired state of QueueAuthorizationRule
#QueueAuthorizationRuleSpec: {
	forProvider: #QueueAuthorizationRuleParameters @go(ForProvider)

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
	initProvider?: #QueueAuthorizationRuleInitParameters @go(InitProvider)
}

// QueueAuthorizationRuleStatus defines the observed state of QueueAuthorizationRule.
#QueueAuthorizationRuleStatus: {
	atProvider?: #QueueAuthorizationRuleObservation @go(AtProvider)
}

// QueueAuthorizationRule is the Schema for the QueueAuthorizationRules API. Manages an Authorization Rule for a ServiceBus Queue.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#QueueAuthorizationRule: {
	spec:    #QueueAuthorizationRuleSpec   @go(Spec)
	status?: #QueueAuthorizationRuleStatus @go(Status)
}

// QueueAuthorizationRuleList contains a list of QueueAuthorizationRules
#QueueAuthorizationRuleList: {
	items: [...#QueueAuthorizationRule] @go(Items,[]QueueAuthorizationRule)
}
