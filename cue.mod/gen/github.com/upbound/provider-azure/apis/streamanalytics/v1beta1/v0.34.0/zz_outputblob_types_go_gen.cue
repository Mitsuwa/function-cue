// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputBlobObservation: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The maximum wait time per batch in hh:mm:ss e.g. 00:02:00 for two minutes.
	batchMaxWaitTime?: null | string @go(BatchMaxWaitTime,*string)

	// The minimum number of rows per batch (must be between 0 and 10000).
	batchMinRows?: null | float64 @go(BatchMinRows,*float64)

	// The date format. Wherever {date} appears in path_pattern, the value of this property is used as the date format instead.
	dateFormat?: null | string @go(DateFormat,*string)

	// The ID of the Stream Analytics Output Blob Storage.
	id?: null | string @go(ID,*string)

	// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
	pathPattern?: null | string @go(PathPattern,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	serialization?: [...#SerializationObservation] @go(Serialization,[]SerializationObservation)

	// The name of the Storage Account.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the Container within the Storage Account.
	storageContainerName?: null | string @go(StorageContainerName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The time format. Wherever {time} appears in path_pattern, the value of this property is used as the time format instead.
	timeFormat?: null | string @go(TimeFormat,*string)
}

#OutputBlobParameters: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	// +kubebuilder:validation:Optional
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The maximum wait time per batch in hh:mm:ss e.g. 00:02:00 for two minutes.
	// +kubebuilder:validation:Optional
	batchMaxWaitTime?: null | string @go(BatchMaxWaitTime,*string)

	// The minimum number of rows per batch (must be between 0 and 10000).
	// +kubebuilder:validation:Optional
	batchMinRows?: null | float64 @go(BatchMinRows,*float64)

	// The date format. Wherever {date} appears in path_pattern, the value of this property is used as the date format instead.
	// +kubebuilder:validation:Optional
	dateFormat?: null | string @go(DateFormat,*string)

	// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
	// +kubebuilder:validation:Optional
	pathPattern?: null | string @go(PathPattern,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	// +kubebuilder:validation:Optional
	serialization?: [...#SerializationParameters] @go(Serialization,[]SerializationParameters)

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

#SerializationObservation: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// Specifies the format of the JSON the output will be written in. Possible values are Array and LineSeparated.
	format?: null | string @go(Format,*string)

	// The serialization format used for outgoing data streams. Possible values are Avro, Csv, Json and Parquet.
	type?: null | string @go(Type,*string)
}

#SerializationParameters: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	// +kubebuilder:validation:Optional
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	// +kubebuilder:validation:Optional
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// Specifies the format of the JSON the output will be written in. Possible values are Array and LineSeparated.
	// +kubebuilder:validation:Optional
	format?: null | string @go(Format,*string)

	// The serialization format used for outgoing data streams. Possible values are Avro, Csv, Json and Parquet.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

// OutputBlobSpec defines the desired state of OutputBlob
#OutputBlobSpec: {
	forProvider: #OutputBlobParameters @go(ForProvider)
}

// OutputBlobStatus defines the observed state of OutputBlob.
#OutputBlobStatus: {
	atProvider?: #OutputBlobObservation @go(AtProvider)
}

// OutputBlob is the Schema for the OutputBlobs API. Manages a Stream Analytics Output to Blob Storage.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputBlob: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.dateFormat)",message="dateFormat is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.pathPattern)",message="pathPattern is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.serialization)",message="serialization is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.timeFormat)",message="timeFormat is a required parameter"
	spec:    #OutputBlobSpec   @go(Spec)
	status?: #OutputBlobStatus @go(Status)
}

// OutputBlobList contains a list of OutputBlobs
#OutputBlobList: {
	items: [...#OutputBlob] @go(Items,[]OutputBlob)
}
