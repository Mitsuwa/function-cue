// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#StreamInputBlobInitParameters: {
	// The date format. Wherever {date} appears in path_pattern, the value of this property is used as the date format instead.
	dateFormat?: null | string @go(DateFormat,*string)

	// The name of the Stream Input Blob. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
	pathPattern?: null | string @go(PathPattern,*string)

	// A serialization block as defined below.
	serialization?: [...#StreamInputBlobSerializationInitParameters] @go(Serialization,[]StreamInputBlobSerializationInitParameters)

	// The time format. Wherever {time} appears in path_pattern, the value of this property is used as the time format instead.
	timeFormat?: null | string @go(TimeFormat,*string)
}

#StreamInputBlobObservation: {
	// The date format. Wherever {date} appears in path_pattern, the value of this property is used as the date format instead.
	dateFormat?: null | string @go(DateFormat,*string)

	// The ID of the Stream Analytics Stream Input Blob.
	id?: null | string @go(ID,*string)

	// The name of the Stream Input Blob. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
	pathPattern?: null | string @go(PathPattern,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	serialization?: [...#StreamInputBlobSerializationObservation] @go(Serialization,[]StreamInputBlobSerializationObservation)

	// The name of the Storage Account.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the Container within the Storage Account.
	storageContainerName?: null | string @go(StorageContainerName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The time format. Wherever {time} appears in path_pattern, the value of this property is used as the time format instead.
	timeFormat?: null | string @go(TimeFormat,*string)
}

#StreamInputBlobParameters: {
	// The date format. Wherever {date} appears in path_pattern, the value of this property is used as the date format instead.
	// +kubebuilder:validation:Optional
	dateFormat?: null | string @go(DateFormat,*string)

	// The name of the Stream Input Blob. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
	// +kubebuilder:validation:Optional
	pathPattern?: null | string @go(PathPattern,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	// +kubebuilder:validation:Optional
	serialization?: [...#StreamInputBlobSerializationParameters] @go(Serialization,[]StreamInputBlobSerializationParameters)

	// The name of the Storage Account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the Container within the Storage Account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Container
	// +kubebuilder:validation:Optional
	storageContainerName?: null | string @go(StorageContainerName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Job
	// +kubebuilder:validation:Optional
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The time format. Wherever {time} appears in path_pattern, the value of this property is used as the time format instead.
	// +kubebuilder:validation:Optional
	timeFormat?: null | string @go(TimeFormat,*string)
}

#StreamInputBlobSerializationInitParameters: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// The serialization format used for incoming data streams. Possible values are Avro, Csv and Json.
	type?: null | string @go(Type,*string)
}

#StreamInputBlobSerializationObservation: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// The serialization format used for incoming data streams. Possible values are Avro, Csv and Json.
	type?: null | string @go(Type,*string)
}

#StreamInputBlobSerializationParameters: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	// +kubebuilder:validation:Optional
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	// +kubebuilder:validation:Optional
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// The serialization format used for incoming data streams. Possible values are Avro, Csv and Json.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// StreamInputBlobSpec defines the desired state of StreamInputBlob
#StreamInputBlobSpec: {
	forProvider: #StreamInputBlobParameters @go(ForProvider)

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
	initProvider?: #StreamInputBlobInitParameters @go(InitProvider)
}

// StreamInputBlobStatus defines the observed state of StreamInputBlob.
#StreamInputBlobStatus: {
	atProvider?: #StreamInputBlobObservation @go(AtProvider)
}

// StreamInputBlob is the Schema for the StreamInputBlobs API. Manages a Stream Analytics Stream Input Blob.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#StreamInputBlob: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.dateFormat) || has(self.initProvider.dateFormat)",message="dateFormat is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.pathPattern) || has(self.initProvider.pathPattern)",message="pathPattern is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.serialization) || has(self.initProvider.serialization)",message="serialization is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageAccountKeySecretRef)",message="storageAccountKeySecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.timeFormat) || has(self.initProvider.timeFormat)",message="timeFormat is a required parameter"
	spec:    #StreamInputBlobSpec   @go(Spec)
	status?: #StreamInputBlobStatus @go(Status)
}

// StreamInputBlobList contains a list of StreamInputBlobs
#StreamInputBlobList: {
	items: [...#StreamInputBlob] @go(Items,[]StreamInputBlob)
}
