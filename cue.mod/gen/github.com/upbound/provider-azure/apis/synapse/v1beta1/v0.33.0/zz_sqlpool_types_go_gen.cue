// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#RestoreObservation: {
	// Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
	pointInTime?: null | string @go(PointInTime,*string)

	// The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
	sourceDatabaseId?: null | string @go(SourceDatabaseID,*string)
}

#RestoreParameters: {
	// Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
	// +kubebuilder:validation:Required
	pointInTime?: null | string @go(PointInTime,*string)

	// The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
	// +kubebuilder:validation:Required
	sourceDatabaseId?: null | string @go(SourceDatabaseID,*string)
}

#SQLPoolObservation: {
	// The name of the collation to use with this pool, only applicable when create_mode is set to Default. Azure default is SQL_LATIN1_GENERAL_CP1_CI_AS. Changing this forces a new resource to be created.
	collation?: null | string @go(Collation,*string)

	// Specifies how to create the SQL Pool. Valid values are: Default, Recovery or PointInTimeRestore. Must be Default to create a new database. Defaults to Default. Changing this forces a new resource to be created.
	createMode?: null | string @go(CreateMode,*string)

	// Is transparent data encryption enabled?
	dataEncrypted?: null | bool @go(DataEncrypted,*bool)

	// Is geo-backup policy enabled? Defaults to true.
	geoBackupPolicyEnabled?: null | bool @go(GeoBackupPolicyEnabled,*bool)

	// The ID of the Synapse SQL Pool.
	id?: null | string @go(ID,*string)

	// The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when create_mode is set to Recovery. Changing this forces a new Synapse SQL Pool to be created.
	recoveryDatabaseId?: null | string @go(RecoveryDatabaseID,*string)

	// A restore block as defined below. only applicable when create_mode is set to PointInTimeRestore. Changing this forces a new resource to be created.
	restore?: [...#RestoreObservation] @go(Restore,[]RestoreObservation)

	// Specifies the SKU Name for this Synapse SQL Pool. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c.
	skuName?: null | string @go(SkuName,*string)

	// The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// A mapping of tags which should be assigned to the Synapse SQL Pool.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SQLPoolParameters: {
	// The name of the collation to use with this pool, only applicable when create_mode is set to Default. Azure default is SQL_LATIN1_GENERAL_CP1_CI_AS. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	collation?: null | string @go(Collation,*string)

	// Specifies how to create the SQL Pool. Valid values are: Default, Recovery or PointInTimeRestore. Must be Default to create a new database. Defaults to Default. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	createMode?: null | string @go(CreateMode,*string)

	// Is transparent data encryption enabled?
	// +kubebuilder:validation:Optional
	dataEncrypted?: null | bool @go(DataEncrypted,*bool)

	// Is geo-backup policy enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	geoBackupPolicyEnabled?: null | bool @go(GeoBackupPolicyEnabled,*bool)

	// The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when create_mode is set to Recovery. Changing this forces a new Synapse SQL Pool to be created.
	// +kubebuilder:validation:Optional
	recoveryDatabaseId?: null | string @go(RecoveryDatabaseID,*string)

	// A restore block as defined below. only applicable when create_mode is set to PointInTimeRestore. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	restore?: [...#RestoreParameters] @go(Restore,[]RestoreParameters)

	// Specifies the SKU Name for this Synapse SQL Pool. Possible values are DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c or DW30000c.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// A mapping of tags which should be assigned to the Synapse SQL Pool.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SQLPoolSpec defines the desired state of SQLPool
#SQLPoolSpec: {
	forProvider: #SQLPoolParameters @go(ForProvider)
}

// SQLPoolStatus defines the observed state of SQLPool.
#SQLPoolStatus: {
	atProvider?: #SQLPoolObservation @go(AtProvider)
}

// SQLPool is the Schema for the SQLPools API. Manages a Synapse SQL Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SQLPool: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.skuName)",message="skuName is a required parameter"
	spec:    #SQLPoolSpec   @go(Spec)
	status?: #SQLPoolStatus @go(Status)
}

// SQLPoolList contains a list of SQLPools
#SQLPoolList: {
	items: [...#SQLPool] @go(Items,[]SQLPool)
}
