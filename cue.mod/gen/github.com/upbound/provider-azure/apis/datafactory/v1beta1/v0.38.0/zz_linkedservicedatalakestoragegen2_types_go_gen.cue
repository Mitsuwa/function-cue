// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceDataLakeStorageGen2InitParameters: {
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

	// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with storage_account_key and use_managed_identity.
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)

	// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
	servicePrincipalKey?: null | string @go(ServicePrincipalKey,*string)

	// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and use_managed_identity.
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
	tenant?: null | string @go(Tenant,*string)

	// The endpoint for the Azure Data Lake Storage Gen2 service.
	url?: null | string @go(URL,*string)

	// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and storage_account_key.
	useManagedIdentity?: null | bool @go(UseManagedIdentity,*bool)
}

#LinkedServiceDataLakeStorageGen2Observation: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory Data Lake Storage Gen2 Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with storage_account_key and use_managed_identity.
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)

	// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
	servicePrincipalKey?: null | string @go(ServicePrincipalKey,*string)

	// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and use_managed_identity.
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
	tenant?: null | string @go(Tenant,*string)

	// The endpoint for the Azure Data Lake Storage Gen2 service.
	url?: null | string @go(URL,*string)

	// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and storage_account_key.
	useManagedIdentity?: null | bool @go(UseManagedIdentity,*bool)
}

#LinkedServiceDataLakeStorageGen2Parameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
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

	// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with storage_account_key and use_managed_identity.
	// +kubebuilder:validation:Optional
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)

	// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
	// +kubebuilder:validation:Optional
	servicePrincipalKey?: null | string @go(ServicePrincipalKey,*string)

	// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and use_managed_identity.
	// +kubebuilder:validation:Optional
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
	// +kubebuilder:validation:Optional
	tenant?: null | string @go(Tenant,*string)

	// The endpoint for the Azure Data Lake Storage Gen2 service.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)

	// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with service_principal_id, service_principal_key, tenant and storage_account_key.
	// +kubebuilder:validation:Optional
	useManagedIdentity?: null | bool @go(UseManagedIdentity,*bool)
}

// LinkedServiceDataLakeStorageGen2Spec defines the desired state of LinkedServiceDataLakeStorageGen2
#LinkedServiceDataLakeStorageGen2Spec: {
	forProvider: #LinkedServiceDataLakeStorageGen2Parameters @go(ForProvider)

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
	initProvider?: #LinkedServiceDataLakeStorageGen2InitParameters @go(InitProvider)
}

// LinkedServiceDataLakeStorageGen2Status defines the observed state of LinkedServiceDataLakeStorageGen2.
#LinkedServiceDataLakeStorageGen2Status: {
	atProvider?: #LinkedServiceDataLakeStorageGen2Observation @go(AtProvider)
}

// LinkedServiceDataLakeStorageGen2 is the Schema for the LinkedServiceDataLakeStorageGen2s API. Manages a Linked Service (connection) between Data Lake Storage Gen2 and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceDataLakeStorageGen2: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.url) || (has(self.initProvider) && has(self.initProvider.url))",message="spec.forProvider.url is a required parameter"
	spec:    #LinkedServiceDataLakeStorageGen2Spec   @go(Spec)
	status?: #LinkedServiceDataLakeStorageGen2Status @go(Status)
}

// LinkedServiceDataLakeStorageGen2List contains a list of LinkedServiceDataLakeStorageGen2s
#LinkedServiceDataLakeStorageGen2List: {
	items: [...#LinkedServiceDataLakeStorageGen2] @go(Items,[]LinkedServiceDataLakeStorageGen2)
}
