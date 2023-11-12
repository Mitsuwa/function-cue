// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dataprotection/v1beta1

package v1beta1

#BackupVaultInitParameters: {
	// Specifies the type of the data store. Possible values are ArchiveStore, SnapshotStore and VaultStore. Changing this forces a new resource to be created.
	datastoreType?: null | string @go(DatastoreType,*string)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
	location?: null | string @go(Location,*string)

	// Specifies the backup storage redundancy. Possible values are GeoRedundant and LocallyRedundant. Changing this forces a new Backup Vault to be created.
	redundancy?: null | string @go(Redundancy,*string)

	// A mapping of tags which should be assigned to the Backup Vault.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#BackupVaultObservation: {
	// Specifies the type of the data store. Possible values are ArchiveStore, SnapshotStore and VaultStore. Changing this forces a new resource to be created.
	datastoreType?: null | string @go(DatastoreType,*string)

	// The ID of the Backup Vault.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
	location?: null | string @go(Location,*string)

	// Specifies the backup storage redundancy. Possible values are GeoRedundant and LocallyRedundant. Changing this forces a new Backup Vault to be created.
	redundancy?: null | string @go(Redundancy,*string)

	// The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Backup Vault.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#BackupVaultParameters: {
	// Specifies the type of the data store. Possible values are ArchiveStore, SnapshotStore and VaultStore. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	datastoreType?: null | string @go(DatastoreType,*string)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the backup storage redundancy. Possible values are GeoRedundant and LocallyRedundant. Changing this forces a new Backup Vault to be created.
	// +kubebuilder:validation:Optional
	redundancy?: null | string @go(Redundancy,*string)

	// The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Backup Vault.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IdentityInitParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this Backup Vault. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// The Principal ID for the Service Principal associated with the Identity of this Backup Vault.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID for the Service Principal associated with the Identity of this Backup Vault.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Backup Vault. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this Backup Vault. The only possible value is SystemAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// BackupVaultSpec defines the desired state of BackupVault
#BackupVaultSpec: {
	forProvider: #BackupVaultParameters @go(ForProvider)

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
	initProvider?: #BackupVaultInitParameters @go(InitProvider)
}

// BackupVaultStatus defines the observed state of BackupVault.
#BackupVaultStatus: {
	atProvider?: #BackupVaultObservation @go(AtProvider)
}

// BackupVault is the Schema for the BackupVaults API. Manages a Backup Vault.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#BackupVault: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.datastoreType) || (has(self.initProvider) && has(self.initProvider.datastoreType))",message="spec.forProvider.datastoreType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.redundancy) || (has(self.initProvider) && has(self.initProvider.redundancy))",message="spec.forProvider.redundancy is a required parameter"
	spec:    #BackupVaultSpec   @go(Spec)
	status?: #BackupVaultStatus @go(Status)
}

// BackupVaultList contains a list of BackupVaults
#BackupVaultList: {
	items: [...#BackupVault] @go(Items,[]BackupVault)
}
