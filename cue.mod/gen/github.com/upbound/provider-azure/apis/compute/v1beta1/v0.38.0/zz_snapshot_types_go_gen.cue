// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/compute/v1beta1

package v1beta1

#EncryptionSettingsDiskEncryptionKeyInitParameters: {
	// The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as id on the azurerm_key_vault_secret resource.
	secretUrl?: null | string @go(SecretURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#EncryptionSettingsDiskEncryptionKeyObservation: {
	// The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as id on the azurerm_key_vault_secret resource.
	secretUrl?: null | string @go(SecretURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#EncryptionSettingsDiskEncryptionKeyParameters: {
	// The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as id on the azurerm_key_vault_secret resource.
	// +kubebuilder:validation:Optional
	secretUrl?: null | string @go(SecretURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	// +kubebuilder:validation:Optional
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#EncryptionSettingsKeyEncryptionKeyInitParameters: {
	// The URL to the Key Vault Key used as the Key Encryption Key. This can be found as id on the azurerm_key_vault_key resource.
	keyUrl?: null | string @go(KeyURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#EncryptionSettingsKeyEncryptionKeyObservation: {
	// The URL to the Key Vault Key used as the Key Encryption Key. This can be found as id on the azurerm_key_vault_key resource.
	keyUrl?: null | string @go(KeyURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#EncryptionSettingsKeyEncryptionKeyParameters: {
	// The URL to the Key Vault Key used as the Key Encryption Key. This can be found as id on the azurerm_key_vault_key resource.
	// +kubebuilder:validation:Optional
	keyUrl?: null | string @go(KeyURL,*string)

	// The ID of the source Key Vault. This can be found as id on the azurerm_key_vault resource.
	// +kubebuilder:validation:Optional
	sourceVaultId?: null | string @go(SourceVaultID,*string)
}

#SnapshotEncryptionSettingsInitParameters: {
	// A disk_encryption_key block as defined below.
	diskEncryptionKey?: [...#EncryptionSettingsDiskEncryptionKeyInitParameters] @go(DiskEncryptionKey,[]EncryptionSettingsDiskEncryptionKeyInitParameters)
	enabled?: null | bool @go(Enabled,*bool)

	// A key_encryption_key block as defined below.
	keyEncryptionKey?: [...#EncryptionSettingsKeyEncryptionKeyInitParameters] @go(KeyEncryptionKey,[]EncryptionSettingsKeyEncryptionKeyInitParameters)
}

#SnapshotEncryptionSettingsObservation: {
	// A disk_encryption_key block as defined below.
	diskEncryptionKey?: [...#EncryptionSettingsDiskEncryptionKeyObservation] @go(DiskEncryptionKey,[]EncryptionSettingsDiskEncryptionKeyObservation)
	enabled?: null | bool @go(Enabled,*bool)

	// A key_encryption_key block as defined below.
	keyEncryptionKey?: [...#EncryptionSettingsKeyEncryptionKeyObservation] @go(KeyEncryptionKey,[]EncryptionSettingsKeyEncryptionKeyObservation)
}

#SnapshotEncryptionSettingsParameters: {
	// A disk_encryption_key block as defined below.
	// +kubebuilder:validation:Optional
	diskEncryptionKey?: [...#EncryptionSettingsDiskEncryptionKeyParameters] @go(DiskEncryptionKey,[]EncryptionSettingsDiskEncryptionKeyParameters)

	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// A key_encryption_key block as defined below.
	// +kubebuilder:validation:Optional
	keyEncryptionKey?: [...#EncryptionSettingsKeyEncryptionKeyParameters] @go(KeyEncryptionKey,[]EncryptionSettingsKeyEncryptionKeyParameters)
}

#SnapshotInitParameters: {
	// Indicates how the snapshot is to be created. Possible values are Copy or Import.
	createOption?: null | string @go(CreateOption,*string)

	// The size of the Snapshotted Disk in GB.
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// A encryption_settings block as defined below.
	encryptionSettings?: [...#SnapshotEncryptionSettingsInitParameters] @go(EncryptionSettings,[]SnapshotEncryptionSettingsInitParameters)

	// Specifies if the Snapshot is incremental.
	incrementalEnabled?: null | bool @go(IncrementalEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies a reference to an existing snapshot, when create_option is Copy. Changing this forces a new resource to be created.
	sourceResourceId?: null | string @go(SourceResourceID,*string)

	// Specifies the ID of an storage account. Used with source_uri to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SnapshotObservation: {
	// Indicates how the snapshot is to be created. Possible values are Copy or Import.
	createOption?: null | string @go(CreateOption,*string)

	// The size of the Snapshotted Disk in GB.
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// A encryption_settings block as defined below.
	encryptionSettings?: [...#SnapshotEncryptionSettingsObservation] @go(EncryptionSettings,[]SnapshotEncryptionSettingsObservation)

	// The Snapshot ID.
	id?: null | string @go(ID,*string)

	// Specifies if the Snapshot is incremental.
	incrementalEnabled?: null | bool @go(IncrementalEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies a reference to an existing snapshot, when create_option is Copy. Changing this forces a new resource to be created.
	sourceResourceId?: null | string @go(SourceResourceID,*string)

	// Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
	sourceUri?: null | string @go(SourceURI,*string)

	// Specifies the ID of an storage account. Used with source_uri to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether Trusted Launch is enabled for the Snapshot.
	trustedLaunchEnabled?: null | bool @go(TrustedLaunchEnabled,*bool)
}

#SnapshotParameters: {
	// Indicates how the snapshot is to be created. Possible values are Copy or Import.
	// +kubebuilder:validation:Optional
	createOption?: null | string @go(CreateOption,*string)

	// The size of the Snapshotted Disk in GB.
	// +kubebuilder:validation:Optional
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// A encryption_settings block as defined below.
	// +kubebuilder:validation:Optional
	encryptionSettings?: [...#SnapshotEncryptionSettingsParameters] @go(EncryptionSettings,[]SnapshotEncryptionSettingsParameters)

	// Specifies if the Snapshot is incremental.
	// +kubebuilder:validation:Optional
	incrementalEnabled?: null | bool @go(IncrementalEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies a reference to an existing snapshot, when create_option is Copy. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	sourceResourceId?: null | string @go(SourceResourceID,*string)

	// Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/compute/v1beta1.ManagedDisk
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	sourceUri?: null | string @go(SourceURI,*string)

	// Specifies the ID of an storage account. Used with source_uri to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SnapshotSpec defines the desired state of Snapshot
#SnapshotSpec: {
	forProvider: #SnapshotParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #SnapshotInitParameters @go(InitProvider)
}

// SnapshotStatus defines the observed state of Snapshot.
#SnapshotStatus: {
	atProvider?: #SnapshotObservation @go(AtProvider)
}

// Snapshot is the Schema for the Snapshots API. Manages a Disk Snapshot.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Snapshot: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.createOption) || (has(self.initProvider) && has(self.initProvider.createOption))",message="spec.forProvider.createOption is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #SnapshotSpec   @go(Spec)
	status?: #SnapshotStatus @go(Status)
}

// SnapshotList contains a list of Snapshots
#SnapshotList: {
	items: [...#Snapshot] @go(Items,[]Snapshot)
}
