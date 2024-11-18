// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/timeseriesinsights/v1beta1

package v1beta1

#EventSourceIOTHubInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the Shared Access key that grants the Event Source access to the IotHub.
	sharedAccessKeyName?: null | string @go(SharedAccessKeyName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

#EventSourceIOTHubObservation: {
	// Specifies the name of the IotHub Consumer Group that holds the partitions from which events will be read.
	consumerGroupName?: null | string @go(ConsumerGroupName,*string)

	// Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created.
	environmentId?: null | string @go(EnvironmentID,*string)

	// Specifies the resource id where events will be coming from.
	eventSourceResourceId?: null | string @go(EventSourceResourceID,*string)

	// The ID of the IoT Time Series Insights IoTHub Event Source.
	id?: null | string @go(ID,*string)

	// Specifies the name of the IotHub which will be associated with this resource.
	iothubName?: null | string @go(IOTHubName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the Shared Access key that grants the Event Source access to the IotHub.
	sharedAccessKeyName?: null | string @go(SharedAccessKeyName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

#EventSourceIOTHubParameters: {
	// Specifies the name of the IotHub Consumer Group that holds the partitions from which events will be read.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devices/v1beta1.IOTHubConsumerGroup
	// +kubebuilder:validation:Optional
	consumerGroupName?: null | string @go(ConsumerGroupName,*string)

	// Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/timeseriesinsights/v1beta1.Gen2Environment
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	environmentId?: null | string @go(EnvironmentID,*string)

	// Specifies the resource id where events will be coming from.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devices/v1beta1.IOTHub
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	eventSourceResourceId?: null | string @go(EventSourceResourceID,*string)

	// Specifies the name of the IotHub which will be associated with this resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devices/v1beta1.IOTHub
	// +kubebuilder:validation:Optional
	iothubName?: null | string @go(IOTHubName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the Shared Access key that grants the Event Source access to the IotHub.
	// +kubebuilder:validation:Optional
	sharedAccessKeyName?: null | string @go(SharedAccessKeyName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time.
	// +kubebuilder:validation:Optional
	timestampPropertyName?: null | string @go(TimestampPropertyName,*string)
}

// EventSourceIOTHubSpec defines the desired state of EventSourceIOTHub
#EventSourceIOTHubSpec: {
	forProvider: #EventSourceIOTHubParameters @go(ForProvider)

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
	initProvider?: #EventSourceIOTHubInitParameters @go(InitProvider)
}

// EventSourceIOTHubStatus defines the observed state of EventSourceIOTHub.
#EventSourceIOTHubStatus: {
	atProvider?: #EventSourceIOTHubObservation @go(AtProvider)
}

// EventSourceIOTHub is the Schema for the EventSourceIOTHubs API. Manages an Azure IoT Time Series Insights IoTHub Event Source.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#EventSourceIOTHub: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sharedAccessKeySecretRef)",message="spec.forProvider.sharedAccessKeySecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sharedAccessKeyName) || (has(self.initProvider) && has(self.initProvider.sharedAccessKeyName))",message="spec.forProvider.sharedAccessKeyName is a required parameter"
	spec:    #EventSourceIOTHubSpec   @go(Spec)
	status?: #EventSourceIOTHubStatus @go(Status)
}

// EventSourceIOTHubList contains a list of EventSourceIOTHubs
#EventSourceIOTHubList: {
	items: [...#EventSourceIOTHub] @go(Items,[]EventSourceIOTHub)
}
