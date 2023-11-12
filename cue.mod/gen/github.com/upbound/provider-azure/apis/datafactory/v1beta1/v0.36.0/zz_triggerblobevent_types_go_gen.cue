// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#TriggerBlobEventInitParameters: {
	// Specifies if the Data Factory Blob Event Trigger is activated. Defaults to true.
	activated?: null | bool @go(Activated,*bool)

	// A map of additional properties to associate with the Data Factory Blob Event Trigger.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Blob Event Trigger.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The pattern that blob path starts with for trigger to fire.
	blobPathBeginsWith?: null | string @go(BlobPathBeginsWith,*string)

	// The pattern that blob path ends with for trigger to fire.
	blobPathEndsWith?: null | string @go(BlobPathEndsWith,*string)

	// The description for the Data Factory Blob Event Trigger.
	description?: null | string @go(Description,*string)

	// List of events that will fire this trigger. Possible values are Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted.
	events?: [...null | string] @go(Events,[]*string)

	// are blobs with zero bytes ignored?
	ignoreEmptyBlobs?: null | bool @go(IgnoreEmptyBlobs,*bool)

	// One or more pipeline blocks as defined below.
	pipeline?: [...#TriggerBlobEventPipelineInitParameters] @go(Pipeline,[]TriggerBlobEventPipelineInitParameters)
}

#TriggerBlobEventObservation: {
	// Specifies if the Data Factory Blob Event Trigger is activated. Defaults to true.
	activated?: null | bool @go(Activated,*bool)

	// A map of additional properties to associate with the Data Factory Blob Event Trigger.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Blob Event Trigger.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The pattern that blob path starts with for trigger to fire.
	blobPathBeginsWith?: null | string @go(BlobPathBeginsWith,*string)

	// The pattern that blob path ends with for trigger to fire.
	blobPathEndsWith?: null | string @go(BlobPathEndsWith,*string)

	// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Blob Event Trigger.
	description?: null | string @go(Description,*string)

	// List of events that will fire this trigger. Possible values are Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted.
	events?: [...null | string] @go(Events,[]*string)

	// The ID of the Data Factory Blob Event Trigger.
	id?: null | string @go(ID,*string)

	// are blobs with zero bytes ignored?
	ignoreEmptyBlobs?: null | bool @go(IgnoreEmptyBlobs,*bool)

	// One or more pipeline blocks as defined below.
	pipeline?: [...#TriggerBlobEventPipelineObservation] @go(Pipeline,[]TriggerBlobEventPipelineObservation)

	// The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#TriggerBlobEventParameters: {
	// Specifies if the Data Factory Blob Event Trigger is activated. Defaults to true.
	// +kubebuilder:validation:Optional
	activated?: null | bool @go(Activated,*bool)

	// A map of additional properties to associate with the Data Factory Blob Event Trigger.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Blob Event Trigger.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The pattern that blob path starts with for trigger to fire.
	// +kubebuilder:validation:Optional
	blobPathBeginsWith?: null | string @go(BlobPathBeginsWith,*string)

	// The pattern that blob path ends with for trigger to fire.
	// +kubebuilder:validation:Optional
	blobPathEndsWith?: null | string @go(BlobPathEndsWith,*string)

	// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Blob Event Trigger.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// List of events that will fire this trigger. Possible values are Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted.
	// +kubebuilder:validation:Optional
	events?: [...null | string] @go(Events,[]*string)

	// are blobs with zero bytes ignored?
	// +kubebuilder:validation:Optional
	ignoreEmptyBlobs?: null | bool @go(IgnoreEmptyBlobs,*bool)

	// One or more pipeline blocks as defined below.
	// +kubebuilder:validation:Optional
	pipeline?: [...#TriggerBlobEventPipelineParameters] @go(Pipeline,[]TriggerBlobEventPipelineParameters)

	// The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#TriggerBlobEventPipelineInitParameters: {
	// The Data Factory Pipeline parameters that the trigger will act on.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#TriggerBlobEventPipelineObservation: {
	// The Data Factory Pipeline name that the trigger will act on.
	name?: null | string @go(Name,*string)

	// The Data Factory Pipeline parameters that the trigger will act on.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#TriggerBlobEventPipelineParameters: {
	// The Data Factory Pipeline name that the trigger will act on.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Pipeline
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The Data Factory Pipeline parameters that the trigger will act on.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// TriggerBlobEventSpec defines the desired state of TriggerBlobEvent
#TriggerBlobEventSpec: {
	forProvider: #TriggerBlobEventParameters @go(ForProvider)

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
	initProvider?: #TriggerBlobEventInitParameters @go(InitProvider)
}

// TriggerBlobEventStatus defines the observed state of TriggerBlobEvent.
#TriggerBlobEventStatus: {
	atProvider?: #TriggerBlobEventObservation @go(AtProvider)
}

// TriggerBlobEvent is the Schema for the TriggerBlobEvents API. Manages a Blob Event Trigger inside an Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#TriggerBlobEvent: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.events) || has(self.initProvider.events)",message="events is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.pipeline) || has(self.initProvider.pipeline)",message="pipeline is a required parameter"
	spec:    #TriggerBlobEventSpec   @go(Spec)
	status?: #TriggerBlobEventStatus @go(Status)
}

// TriggerBlobEventList contains a list of TriggerBlobEvents
#TriggerBlobEventList: {
	items: [...#TriggerBlobEvent] @go(Items,[]TriggerBlobEvent)
}
