// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#MonitorDataCollectionEndpointInitParameters: {
	// Specifies a description for the Data Collection Endpoint.
	description?: null | string @go(Description,*string)

	// The kind of the Data Collection Endpoint. Possible values are Linux and Windows.
	kind?: null | string @go(Kind,*string)

	// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
	location?: null | string @go(Location,*string)

	// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are true and false. Default to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// A mapping of tags which should be assigned to the Data Collection Endpoint.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorDataCollectionEndpointObservation: {
	// The endpoint used for accessing configuration, e.g., https://mydce-abcd.eastus-1.control.monitor.azure.com.
	configurationAccessEndpoint?: null | string @go(ConfigurationAccessEndpoint,*string)

	// Specifies a description for the Data Collection Endpoint.
	description?: null | string @go(Description,*string)

	// The ID of the Data Collection Endpoint.
	id?: null | string @go(ID,*string)

	// The kind of the Data Collection Endpoint. Possible values are Linux and Windows.
	kind?: null | string @go(Kind,*string)

	// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
	location?: null | string @go(Location,*string)

	// The endpoint used for ingesting logs, e.g., https://mydce-abcd.eastus-1.ingest.monitor.azure.com.
	logsIngestionEndpoint?: null | string @go(LogsIngestionEndpoint,*string)

	// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are true and false. Default to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Data Collection Endpoint.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorDataCollectionEndpointParameters: {
	// Specifies a description for the Data Collection Endpoint.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The kind of the Data Collection Endpoint. Possible values are Linux and Windows.
	// +kubebuilder:validation:Optional
	kind?: null | string @go(Kind,*string)

	// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are true and false. Default to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Data Collection Endpoint.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// MonitorDataCollectionEndpointSpec defines the desired state of MonitorDataCollectionEndpoint
#MonitorDataCollectionEndpointSpec: {
	forProvider: #MonitorDataCollectionEndpointParameters @go(ForProvider)

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
	initProvider?: #MonitorDataCollectionEndpointInitParameters @go(InitProvider)
}

// MonitorDataCollectionEndpointStatus defines the observed state of MonitorDataCollectionEndpoint.
#MonitorDataCollectionEndpointStatus: {
	atProvider?: #MonitorDataCollectionEndpointObservation @go(AtProvider)
}

// MonitorDataCollectionEndpoint is the Schema for the MonitorDataCollectionEndpoints API. Manages a Data Collection Endpoint.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorDataCollectionEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #MonitorDataCollectionEndpointSpec   @go(Spec)
	status?: #MonitorDataCollectionEndpointStatus @go(Status)
}

// MonitorDataCollectionEndpointList contains a list of MonitorDataCollectionEndpoints
#MonitorDataCollectionEndpointList: {
	items: [...#MonitorDataCollectionEndpoint] @go(Items,[]MonitorDataCollectionEndpoint)
}
