// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceAzureTableStorageInitParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceAzureTableStorageObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceAzureTableStorageParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// LinkedServiceAzureTableStorageSpec defines the desired state of LinkedServiceAzureTableStorage
#LinkedServiceAzureTableStorageSpec: {
	forProvider: #LinkedServiceAzureTableStorageParameters @go(ForProvider)

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
	initProvider?: #LinkedServiceAzureTableStorageInitParameters @go(InitProvider)
}

// LinkedServiceAzureTableStorageStatus defines the observed state of LinkedServiceAzureTableStorage.
#LinkedServiceAzureTableStorageStatus: {
	atProvider?: #LinkedServiceAzureTableStorageObservation @go(AtProvider)
}

// LinkedServiceAzureTableStorage is the Schema for the LinkedServiceAzureTableStorages API. Manages a Linked Service (connection) between an Azure Table Storage and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceAzureTableStorage: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.connectionStringSecretRef)",message="connectionStringSecretRef is a required parameter"
	spec:    #LinkedServiceAzureTableStorageSpec   @go(Spec)
	status?: #LinkedServiceAzureTableStorageStatus @go(Status)
}

// LinkedServiceAzureTableStorageList contains a list of LinkedServiceAzureTableStorages
#LinkedServiceAzureTableStorageList: {
	items: [...#LinkedServiceAzureTableStorage] @go(Items,[]LinkedServiceAzureTableStorage)
}
