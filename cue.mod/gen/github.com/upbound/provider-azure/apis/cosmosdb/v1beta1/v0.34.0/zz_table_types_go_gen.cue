// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cosmosdb/v1beta1

package v1beta1

#TableAutoscaleSettingsObservation: {
	// The maximum throughput of the Table (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#TableAutoscaleSettingsParameters: {
	// The maximum throughput of the Table (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput.
	// +kubebuilder:validation:Optional
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)
}

#TableObservation: {
	// The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// An autoscale_settings block as defined below.
	autoscaleSettings?: [...#TableAutoscaleSettingsObservation] @go(AutoscaleSettings,[]TableAutoscaleSettingsObservation)

	// The ID of the CosmosDB Table.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of Table (RU/s). Must be set in increments of 100. The minimum value is 400.
	throughput?: null | float64 @go(Throughput,*float64)
}

#TableParameters: {
	// The name of the Cosmos DB Table to create the table within. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// An autoscale_settings block as defined below.
	// +kubebuilder:validation:Optional
	autoscaleSettings?: [...#TableAutoscaleSettingsParameters] @go(AutoscaleSettings,[]TableAutoscaleSettingsParameters)

	// The name of the resource group in which the Cosmos DB Table is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The throughput of Table (RU/s). Must be set in increments of 100. The minimum value is 400.
	// +kubebuilder:validation:Optional
	throughput?: null | float64 @go(Throughput,*float64)
}

// TableSpec defines the desired state of Table
#TableSpec: {
	forProvider: #TableParameters @go(ForProvider)
}

// TableStatus defines the observed state of Table.
#TableStatus: {
	atProvider?: #TableObservation @go(AtProvider)
}

// Table is the Schema for the Tables API. Manages a Table within a Cosmos DB Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Table: {
	spec:    #TableSpec   @go(Spec)
	status?: #TableStatus @go(Status)
}

// TableList contains a list of Tables
#TableList: {
	items: [...#Table] @go(Items,[]Table)
}
