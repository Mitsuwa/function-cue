// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/eventhub/v1beta1

package v1beta1

#ConsumerGroupInitParameters: {
	// Specifies the user metadata.
	userMetadata?: null | string @go(UserMetadata,*string)
}

#ConsumerGroupObservation: {
	// Specifies the name of the EventHub. Changing this forces a new resource to be created.
	eventhubName?: null | string @go(EventHubName,*string)

	// The ID of the EventHub Consumer Group.
	id?: null | string @go(ID,*string)

	// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
	namespaceName?: null | string @go(NamespaceName,*string)

	// The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the user metadata.
	userMetadata?: null | string @go(UserMetadata,*string)
}

#ConsumerGroupParameters: {
	// Specifies the name of the EventHub. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=EventHub
	// +kubebuilder:validation:Optional
	eventhubName?: null | string @go(EventHubName,*string)

	// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=EventHubNamespace
	// +kubebuilder:validation:Optional
	namespaceName?: null | string @go(NamespaceName,*string)

	// The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the user metadata.
	// +kubebuilder:validation:Optional
	userMetadata?: null | string @go(UserMetadata,*string)
}

// ConsumerGroupSpec defines the desired state of ConsumerGroup
#ConsumerGroupSpec: {
	forProvider: #ConsumerGroupParameters @go(ForProvider)

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
	initProvider?: #ConsumerGroupInitParameters @go(InitProvider)
}

// ConsumerGroupStatus defines the observed state of ConsumerGroup.
#ConsumerGroupStatus: {
	atProvider?: #ConsumerGroupObservation @go(AtProvider)
}

// ConsumerGroup is the Schema for the ConsumerGroups API. Manages a Event Hubs Consumer Group as a nested resource within an Event Hub.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ConsumerGroup: {
	spec:    #ConsumerGroupSpec   @go(Spec)
	status?: #ConsumerGroupStatus @go(Status)
}

// ConsumerGroupList contains a list of ConsumerGroups
#ConsumerGroupList: {
	items: [...#ConsumerGroup] @go(Items,[]ConsumerGroup)
}
