// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/efs/v1beta1

package v1beta1

#BackupPolicyBackupPolicyObservation: {
	// A status of the backup policy. Valid values: ENABLED, DISABLED.
	status?: null | string @go(Status,*string)
}

#BackupPolicyBackupPolicyParameters: {
	// A status of the backup policy. Valid values: ENABLED, DISABLED.
	// +kubebuilder:validation:Required
	status?: null | string @go(Status,*string)
}

#BackupPolicyObservation: {
	// A backup_policy object (documented below).
	backupPolicy?: [...#BackupPolicyBackupPolicyObservation] @go(BackupPolicy,[]BackupPolicyBackupPolicyObservation)

	// The ID of the EFS file system.
	fileSystemId?: null | string @go(FileSystemID,*string)

	// The ID that identifies the file system (e.g., fs-ccfc0d65).
	id?: null | string @go(ID,*string)
}

#BackupPolicyParameters: {
	// A backup_policy object (documented below).
	// +kubebuilder:validation:Optional
	backupPolicy?: [...#BackupPolicyBackupPolicyParameters] @go(BackupPolicy,[]BackupPolicyBackupPolicyParameters)

	// The ID of the EFS file system.
	// +crossplane:generate:reference:type=FileSystem
	// +kubebuilder:validation:Optional
	fileSystemId?: null | string @go(FileSystemID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// BackupPolicySpec defines the desired state of BackupPolicy
#BackupPolicySpec: {
	forProvider: #BackupPolicyParameters @go(ForProvider)
}

// BackupPolicyStatus defines the observed state of BackupPolicy.
#BackupPolicyStatus: {
	atProvider?: #BackupPolicyObservation @go(AtProvider)
}

// BackupPolicy is the Schema for the BackupPolicys API. Provides an Elastic File System (EFS) Backup Policy resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BackupPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.backupPolicy)",message="backupPolicy is a required parameter"
	spec:    #BackupPolicySpec   @go(Spec)
	status?: #BackupPolicyStatus @go(Status)
}

// BackupPolicyList contains a list of BackupPolicys
#BackupPolicyList: {
	items: [...#BackupPolicy] @go(Items,[]BackupPolicy)
}
