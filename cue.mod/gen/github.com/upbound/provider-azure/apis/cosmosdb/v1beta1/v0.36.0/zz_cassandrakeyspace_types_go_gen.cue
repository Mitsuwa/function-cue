// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cosmosdb/v1beta1

package v1beta1

#AutoscaleSettingsInitParameters: {
	// The maximum throughput of the Cassandra KeySpace (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#AutoscaleSettingsObservation: {
	// The maximum throughput of the Cassandra KeySpace (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#AutoscaleSettingsParameters: {
	// The maximum throughput of the Cassandra KeySpace (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	// +kubebuilder:validation:Optional
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#CassandraKeySpaceInitParameters: {
	// An autoscale_settings block as defined below.
	autoscaleSettings?: [...#AutoscaleSettingsInitParameters] @go(AutoscaleSettings,[]AutoscaleSettingsInitParameters)

	// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of 100. The minimum value is 400.
	throughput?: null | float64 @go(Throughput,*float64)
}

#CassandraKeySpaceObservation: {
	// The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// An autoscale_settings block as defined below.
	autoscaleSettings?: [...#AutoscaleSettingsObservation] @go(AutoscaleSettings,[]AutoscaleSettingsObservation)

	// the ID of the CosmosDB Cassandra KeySpace.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of 100. The minimum value is 400.
	throughput?: null | float64 @go(Throughput,*float64)
}

#CassandraKeySpaceParameters: {
	// The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/cosmosdb/v1beta1.Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// An autoscale_settings block as defined below.
	// +kubebuilder:validation:Optional
	autoscaleSettings?: [...#AutoscaleSettingsParameters] @go(AutoscaleSettings,[]AutoscaleSettingsParameters)

	// The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of Cassandra KeySpace (RU/s). Must be set in increments of 100. The minimum value is 400.
	// +kubebuilder:validation:Optional
	throughput?: null | float64 @go(Throughput,*float64)
}

// CassandraKeySpaceSpec defines the desired state of CassandraKeySpace
#CassandraKeySpaceSpec: {
	forProvider: #CassandraKeySpaceParameters @go(ForProvider)

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
	initProvider?: #CassandraKeySpaceInitParameters @go(InitProvider)
}

// CassandraKeySpaceStatus defines the observed state of CassandraKeySpace.
#CassandraKeySpaceStatus: {
	atProvider?: #CassandraKeySpaceObservation @go(AtProvider)
}

// CassandraKeySpace is the Schema for the CassandraKeySpaces API. Manages a Cassandra KeySpace within a Cosmos DB Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#CassandraKeySpace: {
	spec:    #CassandraKeySpaceSpec   @go(Spec)
	status?: #CassandraKeySpaceStatus @go(Status)
}

// CassandraKeySpaceList contains a list of CassandraKeySpaces
#CassandraKeySpaceList: {
	items: [...#CassandraKeySpace] @go(Items,[]CassandraKeySpace)
}
