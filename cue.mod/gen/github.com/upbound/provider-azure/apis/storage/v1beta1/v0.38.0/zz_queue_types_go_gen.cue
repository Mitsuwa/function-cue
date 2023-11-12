// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#QueueInitParameters: {
	// A mapping of MetaData which should be assigned to this Storage Queue.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)
}

#QueueObservation: {
	// The ID of the Storage Queue.
	id?: null | string @go(ID,*string)

	// A mapping of MetaData which should be assigned to this Storage Queue.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The Resource Manager ID of this Storage Queue.
	resourceManagerId?: null | string @go(ResourceManagerID,*string)

	// Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)
}

#QueueParameters: {
	// A mapping of MetaData which should be assigned to this Storage Queue.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)
}

// QueueSpec defines the desired state of Queue
#QueueSpec: {
	forProvider: #QueueParameters @go(ForProvider)

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
	initProvider?: #QueueInitParameters @go(InitProvider)
}

// QueueStatus defines the observed state of Queue.
#QueueStatus: {
	atProvider?: #QueueObservation @go(AtProvider)
}

// Queue is the Schema for the Queues API. Manages a Queue within an Azure Storage Account.
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
