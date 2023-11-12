// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dataprotection/v1beta1

package v1beta1

#BackupPolicyDiskInitParameters: {
	// Specifies a list of repeating time interval. It should follow ISO 8601 repeating time interval . Changing this forces a new Backup Policy Disk to be created.
	backupRepeatingTimeIntervals?: [...null | string] @go(BackupRepeatingTimeIntervals,[]*string)

	// The duration of default retention rule. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	defaultRetentionDuration?: null | string @go(DefaultRetentionDuration,*string)

	// One or more retention_rule blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
	retentionRule?: [...#RetentionRuleInitParameters] @go(RetentionRule,[]RetentionRuleInitParameters)
}

#BackupPolicyDiskObservation: {
	// Specifies a list of repeating time interval. It should follow ISO 8601 repeating time interval . Changing this forces a new Backup Policy Disk to be created.
	backupRepeatingTimeIntervals?: [...null | string] @go(BackupRepeatingTimeIntervals,[]*string)

	// The duration of default retention rule. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	defaultRetentionDuration?: null | string @go(DefaultRetentionDuration,*string)

	// The ID of the Backup Policy Disk.
	id?: null | string @go(ID,*string)

	// One or more retention_rule blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
	retentionRule?: [...#RetentionRuleObservation] @go(RetentionRule,[]RetentionRuleObservation)

	// The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created.
	vaultId?: null | string @go(VaultID,*string)
}

#BackupPolicyDiskParameters: {
	// Specifies a list of repeating time interval. It should follow ISO 8601 repeating time interval . Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	backupRepeatingTimeIntervals?: [...null | string] @go(BackupRepeatingTimeIntervals,[]*string)

	// The duration of default retention rule. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	defaultRetentionDuration?: null | string @go(DefaultRetentionDuration,*string)

	// One or more retention_rule blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	retentionRule?: [...#RetentionRuleParameters] @go(RetentionRule,[]RetentionRuleParameters)

	// The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created.
	// +crossplane:generate:reference:type=BackupVault
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vaultId?: null | string @go(VaultID,*string)
}

#CriteriaInitParameters: {
	// Possible values are FirstOfDay and FirstOfWeek. Changing this forces a new Backup Policy Disk to be created.
	absoluteCriteria?: null | string @go(AbsoluteCriteria,*string)
}

#CriteriaObservation: {
	// Possible values are FirstOfDay and FirstOfWeek. Changing this forces a new Backup Policy Disk to be created.
	absoluteCriteria?: null | string @go(AbsoluteCriteria,*string)
}

#CriteriaParameters: {
	// Possible values are FirstOfDay and FirstOfWeek. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	absoluteCriteria?: null | string @go(AbsoluteCriteria,*string)
}

#RetentionRuleInitParameters: {
	// A criteria block as defined below. Changing this forces a new Backup Policy Disk to be created.
	criteria?: [...#CriteriaInitParameters] @go(Criteria,[]CriteriaInitParameters)

	// Duration of deletion after given timespan. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	duration?: null | string @go(Duration,*string)

	// The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
	name?: null | string @go(Name,*string)

	// Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
	priority?: null | float64 @go(Priority,*float64)
}

#RetentionRuleObservation: {
	// A criteria block as defined below. Changing this forces a new Backup Policy Disk to be created.
	criteria?: [...#CriteriaObservation] @go(Criteria,[]CriteriaObservation)

	// Duration of deletion after given timespan. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	duration?: null | string @go(Duration,*string)

	// The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
	name?: null | string @go(Name,*string)

	// Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
	priority?: null | float64 @go(Priority,*float64)
}

#RetentionRuleParameters: {
	// A criteria block as defined below. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	criteria: [...#CriteriaParameters] @go(Criteria,[]CriteriaParameters)

	// Duration of deletion after given timespan. It should follow ISO 8601 duration format. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	duration?: null | string @go(Duration,*string)

	// The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)
}

// BackupPolicyDiskSpec defines the desired state of BackupPolicyDisk
#BackupPolicyDiskSpec: {
	forProvider: #BackupPolicyDiskParameters @go(ForProvider)

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
	initProvider?: #BackupPolicyDiskInitParameters @go(InitProvider)
}

// BackupPolicyDiskStatus defines the observed state of BackupPolicyDisk.
#BackupPolicyDiskStatus: {
	atProvider?: #BackupPolicyDiskObservation @go(AtProvider)
}

// BackupPolicyDisk is the Schema for the BackupPolicyDisks API. Manages a Backup Policy Disk.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#BackupPolicyDisk: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.backupRepeatingTimeIntervals) || (has(self.initProvider) && has(self.initProvider.backupRepeatingTimeIntervals))",message="spec.forProvider.backupRepeatingTimeIntervals is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.defaultRetentionDuration) || (has(self.initProvider) && has(self.initProvider.defaultRetentionDuration))",message="spec.forProvider.defaultRetentionDuration is a required parameter"
	spec:    #BackupPolicyDiskSpec   @go(Spec)
	status?: #BackupPolicyDiskStatus @go(Status)
}

// BackupPolicyDiskList contains a list of BackupPolicyDisks
#BackupPolicyDiskList: {
	items: [...#BackupPolicyDisk] @go(Items,[]BackupPolicyDisk)
}
