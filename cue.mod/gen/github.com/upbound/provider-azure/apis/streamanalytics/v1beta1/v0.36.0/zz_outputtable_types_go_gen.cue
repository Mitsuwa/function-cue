// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputTableInitParameters: {
	// The number of records for a batch operation. Must be between 1 and 100.
	batchSize?: null | float64 @go(BatchSize,*float64)

	// A list of the column names to be removed from output event entities.
	columnsToRemove?: [...null | string] @go(ColumnsToRemove,[]*string)

	// The name of the output column that contains the partition key.
	partitionKey?: null | string @go(PartitionKey,*string)

	// The name of the output column that contains the row key.
	rowKey?: null | string @go(RowKey,*string)
}

#OutputTableObservation: {
	// The number of records for a batch operation. Must be between 1 and 100.
	batchSize?: null | float64 @go(BatchSize,*float64)

	// A list of the column names to be removed from output event entities.
	columnsToRemove?: [...null | string] @go(ColumnsToRemove,[]*string)

	// The ID of the Stream Analytics Output Table.
	id?: null | string @go(ID,*string)

	// The name of the output column that contains the partition key.
	partitionKey?: null | string @go(PartitionKey,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the output column that contains the row key.
	rowKey?: null | string @go(RowKey,*string)

	// The name of the Storage Account.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The name of the table where the stream should be output to.
	table?: null | string @go(Table,*string)
}

#OutputTableParameters: {
	// The number of records for a batch operation. Must be between 1 and 100.
	// +kubebuilder:validation:Optional
	batchSize?: null | float64 @go(BatchSize,*float64)

	// A list of the column names to be removed from output event entities.
	// +kubebuilder:validation:Optional
	columnsToRemove?: [...null | string] @go(ColumnsToRemove,[]*string)

	// The name of the output column that contains the partition key.
	// +kubebuilder:validation:Optional
	partitionKey?: null | string @go(PartitionKey,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the output column that contains the row key.
	// +kubebuilder:validation:Optional
	rowKey?: null | string @go(RowKey,*string)

	// The name of the Storage Account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The name of the table where the stream should be output to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Table
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	table?: null | string @go(Table,*string)
}

// OutputTableSpec defines the desired state of OutputTable
#OutputTableSpec: {
	forProvider: #OutputTableParameters @go(ForProvider)

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
	initProvider?: #OutputTableInitParameters @go(InitProvider)
}

// OutputTableStatus defines the observed state of OutputTable.
#OutputTableStatus: {
	atProvider?: #OutputTableObservation @go(AtProvider)
}

// OutputTable is the Schema for the OutputTables API. Manages a Stream Analytics Output Table.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputTable: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.batchSize) || has(self.initProvider.batchSize)",message="batchSize is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.partitionKey) || has(self.initProvider.partitionKey)",message="partitionKey is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.rowKey) || has(self.initProvider.rowKey)",message="rowKey is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageAccountKeySecretRef)",message="storageAccountKeySecretRef is a required parameter"
	spec:    #OutputTableSpec   @go(Spec)
	status?: #OutputTableStatus @go(Status)
}

// OutputTableList contains a list of OutputTables
#OutputTableList: {
	items: [...#OutputTable] @go(Items,[]OutputTable)
}
