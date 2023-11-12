// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputEventHubObservation: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The name of the Event Hub.
	eventhubName?: null | string @go(EventHubName,*string)

	// The ID of the Stream Analytics Output EventHub.
	id?: null | string @go(ID,*string)

	// The column that is used for the Event Hub partition key.
	partitionKey?: null | string @go(PartitionKey,*string)

	// A list of property columns to add to the Event Hub output.
	propertyColumns?: [...null | string] @go(PropertyColumns,[]*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	serialization?: [...#OutputEventHubSerializationObservation] @go(Serialization,[]OutputEventHubSerializationObservation)

	// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
	servicebusNamespace?: null | string @go(ServiceBusNamespace,*string)

	// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when authentication_mode is set to ConnectionString.
	sharedAccessPolicyName?: null | string @go(SharedAccessPolicyName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)
}

#OutputEventHubParameters: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	// +kubebuilder:validation:Optional
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The name of the Event Hub.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.EventHub
	// +kubebuilder:validation:Optional
	eventhubName?: null | string @go(EventHubName,*string)

	// The column that is used for the Event Hub partition key.
	// +kubebuilder:validation:Optional
	partitionKey?: null | string @go(PartitionKey,*string)

	// A list of property columns to add to the Event Hub output.
	// +kubebuilder:validation:Optional
	propertyColumns?: [...null | string] @go(PropertyColumns,[]*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A serialization block as defined below.
	// +kubebuilder:validation:Optional
	serialization?: [...#OutputEventHubSerializationParameters] @go(Serialization,[]OutputEventHubSerializationParameters)

	// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/eventhub/v1beta1.EventHubNamespace
	// +kubebuilder:validation:Optional
	servicebusNamespace?: null | string @go(ServiceBusNamespace,*string)

	// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when authentication_mode is set to ConnectionString.
	// +kubebuilder:validation:Optional
	sharedAccessPolicyName?: null | string @go(SharedAccessPolicyName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)
}

#OutputEventHubSerializationObservation: {
	// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to UTF8.
	encoding?: null | string @go(Encoding,*string)

	// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are   (space), , (comma), 	 (tab), | (pipe) and ;.
	fieldDelimiter?: null | string @go(FieldDelimiter,*string)

	// Specifies the format of the JSON the output will be written in. Possible values are Array and LineSeparated.
	format?: null | string @go(Format,*string)

	// The serialization format used for outgoing data streams. Possible values are Avro, Csv, Json and Parquet.
	type?: null | string @go(Type,*string)
}

#OutputEventHubSerializationParameters: {
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

// OutputEventHubSpec defines the desired state of OutputEventHub
#OutputEventHubSpec: {
	forProvider: #OutputEventHubParameters @go(ForProvider)
}

// OutputEventHubStatus defines the observed state of OutputEventHub.
#OutputEventHubStatus: {
	atProvider?: #OutputEventHubObservation @go(AtProvider)
}

// OutputEventHub is the Schema for the OutputEventHubs API. Manages a Stream Analytics Output to an EventHub.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputEventHub: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.serialization)",message="serialization is a required parameter"
	spec:    #OutputEventHubSpec   @go(Spec)
	status?: #OutputEventHubStatus @go(Status)
}

// OutputEventHubList contains a list of OutputEventHubs
#OutputEventHubList: {
	items: [...#OutputEventHub] @go(Items,[]OutputEventHub)
}
