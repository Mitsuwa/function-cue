// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dataprotection/v1beta1

package v1beta1

#BackupInstancePostgreSQLInitParameters: {
	// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
	location?: null | string @go(Location,*string)
}

#BackupInstancePostgreSQLObservation: {
	// The ID of the Backup Policy.
	backupPolicyId?: null | string @go(BackupPolicyID,*string)

	// The ID or versionless ID of the key vault secret which stores the connection string of the database.
	databaseCredentialKeyVaultSecretId?: null | string @go(DatabaseCredentialKeyVaultSecretID,*string)

	// The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
	databaseId?: null | string @go(DatabaseID,*string)

	// The ID of the Backup Instance PostgreSQL.
	id?: null | string @go(ID,*string)

	// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
	location?: null | string @go(Location,*string)

	// The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
	vaultId?: null | string @go(VaultID,*string)
}

#BackupInstancePostgreSQLParameters: {
	// The ID of the Backup Policy.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/dataprotection/v1beta1.BackupPolicyPostgreSQL
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	backupPolicyId?: null | string @go(BackupPolicyID,*string)

	// The ID or versionless ID of the key vault secret which stores the connection string of the database.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/keyvault/v1beta1.Secret
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("versionless_id",true)
	// +kubebuilder:validation:Optional
	databaseCredentialKeyVaultSecretId?: null | string @go(DatabaseCredentialKeyVaultSecretID,*string)

	// The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/dbforpostgresql/v1beta1.Database
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	databaseId?: null | string @go(DatabaseID,*string)

	// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/dataprotection/v1beta1.BackupVault
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vaultId?: null | string @go(VaultID,*string)
}

// BackupInstancePostgreSQLSpec defines the desired state of BackupInstancePostgreSQL
#BackupInstancePostgreSQLSpec: {
	forProvider: #BackupInstancePostgreSQLParameters @go(ForProvider)

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
	initProvider?: #BackupInstancePostgreSQLInitParameters @go(InitProvider)
}

// BackupInstancePostgreSQLStatus defines the observed state of BackupInstancePostgreSQL.
#BackupInstancePostgreSQLStatus: {
	atProvider?: #BackupInstancePostgreSQLObservation @go(AtProvider)
}

// BackupInstancePostgreSQL is the Schema for the BackupInstancePostgreSQLs API. Manages a Backup Instance to back up PostgreSQL.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#BackupInstancePostgreSQL: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #BackupInstancePostgreSQLSpec   @go(Spec)
	status?: #BackupInstancePostgreSQLStatus @go(Status)
}

// BackupInstancePostgreSQLList contains a list of BackupInstancePostgreSQLs
#BackupInstancePostgreSQLList: {
	items: [...#BackupInstancePostgreSQL] @go(Items,[]BackupInstancePostgreSQL)
}
