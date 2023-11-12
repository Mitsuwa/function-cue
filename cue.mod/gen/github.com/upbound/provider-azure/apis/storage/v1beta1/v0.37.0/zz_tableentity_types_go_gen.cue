// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storage/v1beta1

package v1beta1

#TableEntityInitParameters: {
	// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
	entity?: {[string]: null | string} @go(Entity,map[string]*string)

	// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource.
	partitionKey?: null | string @go(PartitionKey,*string)

	// The key for the row where the entity will be inserted/merged. Changing this forces a new resource.
	rowKey?: null | string @go(RowKey,*string)
}

#TableEntityObservation: {
	// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
	entity?: {[string]: null | string} @go(Entity,map[string]*string)

	// The ID of the Entity within the Table in the Storage Account.
	id?: null | string @go(ID,*string)

	// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource.
	partitionKey?: null | string @go(PartitionKey,*string)

	// The key for the row where the entity will be inserted/merged. Changing this forces a new resource.
	rowKey?: null | string @go(RowKey,*string)

	// Specifies the storage account in which to create the storage table entity. Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the storage table in which to create the storage table entity. Changing this forces a new resource to be created.
	tableName?: null | string @go(TableName,*string)
}

#TableEntityParameters: {
	// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
	// +kubebuilder:validation:Optional
	entity?: {[string]: null | string} @go(Entity,map[string]*string)

	// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource.
	// +kubebuilder:validation:Optional
	partitionKey?: null | string @go(PartitionKey,*string)

	// The key for the row where the entity will be inserted/merged. Changing this forces a new resource.
	// +kubebuilder:validation:Optional
	rowKey?: null | string @go(RowKey,*string)

	// Specifies the storage account in which to create the storage table entity. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// The name of the storage table in which to create the storage table entity. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Table
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	tableName?: null | string @go(TableName,*string)
}

// TableEntitySpec defines the desired state of TableEntity
#TableEntitySpec: {
	forProvider: #TableEntityParameters @go(ForProvider)

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
	initProvider?: #TableEntityInitParameters @go(InitProvider)
}

// TableEntityStatus defines the observed state of TableEntity.
#TableEntityStatus: {
	atProvider?: #TableEntityObservation @go(AtProvider)
}

// TableEntity is the Schema for the TableEntitys API. Manages an Entity within a Table in an Azure Storage Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#TableEntity: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.entity) || (has(self.initProvider) && has(self.initProvider.entity))",message="spec.forProvider.entity is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.partitionKey) || (has(self.initProvider) && has(self.initProvider.partitionKey))",message="spec.forProvider.partitionKey is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.rowKey) || (has(self.initProvider) && has(self.initProvider.rowKey))",message="spec.forProvider.rowKey is a required parameter"
	spec:    #TableEntitySpec   @go(Spec)
	status?: #TableEntityStatus @go(Status)
}

// TableEntityList contains a list of TableEntitys
#TableEntityList: {
	items: [...#TableEntity] @go(Items,[]TableEntity)
}
