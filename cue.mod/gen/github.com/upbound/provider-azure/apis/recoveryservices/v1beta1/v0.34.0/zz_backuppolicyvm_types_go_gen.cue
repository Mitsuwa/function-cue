// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/recoveryservices/v1beta1

package v1beta1

#BackupPolicyVMBackupObservation: {
	// Sets the backup frequency. Possible values are Hourly, Daily and Weekly.
	frequency?: null | string @go(Frequency,*string)

	// Duration of the backup window in hours. Possible values are between 4 and 24 This is used when frequency is Hourly.
	hourDuration?: null | float64 @go(HourDuration,*float64)

	// Interval in hour at which backup is triggered. Possible values are 4, 6, 8 and 12. This is used when frequency is Hourly.
	hourInterval?: null | float64 @go(HourInterval,*float64)

	// The time of day to perform the backup in 24hour format.
	time?: null | string @go(Time,*string)

	// The days of the week to perform backups on. Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday. This is used when frequency is Weekly.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#BackupPolicyVMBackupParameters: {
	// Sets the backup frequency. Possible values are Hourly, Daily and Weekly.
	// +kubebuilder:validation:Required
	frequency?: null | string @go(Frequency,*string)

	// Duration of the backup window in hours. Possible values are between 4 and 24 This is used when frequency is Hourly.
	// +kubebuilder:validation:Optional
	hourDuration?: null | float64 @go(HourDuration,*float64)

	// Interval in hour at which backup is triggered. Possible values are 4, 6, 8 and 12. This is used when frequency is Hourly.
	// +kubebuilder:validation:Optional
	hourInterval?: null | float64 @go(HourInterval,*float64)

	// The time of day to perform the backup in 24hour format.
	// +kubebuilder:validation:Required
	time?: null | string @go(Time,*string)

	// The days of the week to perform backups on. Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday. This is used when frequency is Weekly.
	// +kubebuilder:validation:Optional
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#BackupPolicyVMObservation: {
	// Configures the Policy backup frequency, times & days as documented in the backup block below.
	backup?: [...#BackupPolicyVMBackupObservation] @go(Backup,[]BackupPolicyVMBackupObservation)

	// The ID of the VM Backup Policy.
	id?: null | string @go(ID,*string)

	// Specifies the instant restore resource group name as documented in the instant_restore_resource_group block below.
	instantRestoreResourceGroup?: [...#InstantRestoreResourceGroupObservation] @go(InstantRestoreResourceGroup,[]InstantRestoreResourceGroupObservation)

	// Specifies the instant restore retention range in days. Possible values are between 1 and 5 when policy_type is V1, and 1 to 30 when policy_type is V2.
	instantRestoreRetentionDays?: null | float64 @go(InstantRestoreRetentionDays,*float64)

	// Type of the Backup Policy. Possible values are V1 and V2 where V2 stands for the Enhanced Policy. Defaults to V1. Changing this forces a new resource to be created.
	policyType?: null | string @go(PolicyType,*string)

	// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Configures the policy daily retention as documented in the retention_daily block below. Required when backup frequency is Daily.
	retentionDaily?: [...#BackupPolicyVMRetentionDailyObservation] @go(RetentionDaily,[]BackupPolicyVMRetentionDailyObservation)

	// Configures the policy monthly retention as documented in the retention_monthly block below.
	retentionMonthly?: [...#BackupPolicyVMRetentionMonthlyObservation] @go(RetentionMonthly,[]BackupPolicyVMRetentionMonthlyObservation)

	// Configures the policy weekly retention as documented in the retention_weekly block below. Required when backup frequency is Weekly.
	retentionWeekly?: [...#BackupPolicyVMRetentionWeeklyObservation] @go(RetentionWeekly,[]BackupPolicyVMRetentionWeeklyObservation)

	// Configures the policy yearly retention as documented in the retention_yearly block below.
	retentionYearly?: [...#BackupPolicyVMRetentionYearlyObservation] @go(RetentionYearly,[]BackupPolicyVMRetentionYearlyObservation)

	// Specifies the timezone. the possible values are defined here. Defaults to UTC
	timezone?: null | string @go(Timezone,*string)
}

#BackupPolicyVMParameters: {
	// Configures the Policy backup frequency, times & days as documented in the backup block below.
	// +kubebuilder:validation:Optional
	backup?: [...#BackupPolicyVMBackupParameters] @go(Backup,[]BackupPolicyVMBackupParameters)

	// Specifies the instant restore resource group name as documented in the instant_restore_resource_group block below.
	// +kubebuilder:validation:Optional
	instantRestoreResourceGroup?: [...#InstantRestoreResourceGroupParameters] @go(InstantRestoreResourceGroup,[]InstantRestoreResourceGroupParameters)

	// Specifies the instant restore retention range in days. Possible values are between 1 and 5 when policy_type is V1, and 1 to 30 when policy_type is V2.
	// +kubebuilder:validation:Optional
	instantRestoreRetentionDays?: null | float64 @go(InstantRestoreRetentionDays,*float64)

	// Type of the Backup Policy. Possible values are V1 and V2 where V2 stands for the Enhanced Policy. Defaults to V1. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	policyType?: null | string @go(PolicyType,*string)

	// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.Vault
	// +kubebuilder:validation:Optional
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Configures the policy daily retention as documented in the retention_daily block below. Required when backup frequency is Daily.
	// +kubebuilder:validation:Optional
	retentionDaily?: [...#BackupPolicyVMRetentionDailyParameters] @go(RetentionDaily,[]BackupPolicyVMRetentionDailyParameters)

	// Configures the policy monthly retention as documented in the retention_monthly block below.
	// +kubebuilder:validation:Optional
	retentionMonthly?: [...#BackupPolicyVMRetentionMonthlyParameters] @go(RetentionMonthly,[]BackupPolicyVMRetentionMonthlyParameters)

	// Configures the policy weekly retention as documented in the retention_weekly block below. Required when backup frequency is Weekly.
	// +kubebuilder:validation:Optional
	retentionWeekly?: [...#BackupPolicyVMRetentionWeeklyParameters] @go(RetentionWeekly,[]BackupPolicyVMRetentionWeeklyParameters)

	// Configures the policy yearly retention as documented in the retention_yearly block below.
	// +kubebuilder:validation:Optional
	retentionYearly?: [...#BackupPolicyVMRetentionYearlyParameters] @go(RetentionYearly,[]BackupPolicyVMRetentionYearlyParameters)

	// Specifies the timezone. the possible values are defined here. Defaults to UTC
	// +kubebuilder:validation:Optional
	timezone?: null | string @go(Timezone,*string)
}

#BackupPolicyVMRetentionDailyObservation: {
	// The number of daily backups to keep. Must be between 7 and 9999.
	count?: null | float64 @go(Count,*float64)
}

#BackupPolicyVMRetentionDailyParameters: {
	// The number of daily backups to keep. Must be between 7 and 9999.
	// +kubebuilder:validation:Required
	count?: null | float64 @go(Count,*float64)
}

#BackupPolicyVMRetentionMonthlyObservation: {
	// The number of monthly backups to keep. Must be between 1 and 9999
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#BackupPolicyVMRetentionMonthlyParameters: {
	// The number of monthly backups to keep. Must be between 1 and 9999
	// +kubebuilder:validation:Required
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Required
	weekdays: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last.
	// +kubebuilder:validation:Required
	weeks: [...null | string] @go(Weeks,[]*string)
}

#BackupPolicyVMRetentionWeeklyObservation: {
	// The number of weekly backups to keep. Must be between 1 and 9999
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain. Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#BackupPolicyVMRetentionWeeklyParameters: {
	// The number of weekly backups to keep. Must be between 1 and 9999
	// +kubebuilder:validation:Required
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain. Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Required
	weekdays: [...null | string] @go(Weekdays,[]*string)
}

#BackupPolicyVMRetentionYearlyObservation: {
	// The number of yearly backups to keep. Must be between 1 and 9999
	count?: null | float64 @go(Count,*float64)

	// The months of the year to retain backups of. Must be one of January, February, March, April, May, June, July, August, September, October, November and December.
	months?: [...null | string] @go(Months,[]*string)

	// The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#BackupPolicyVMRetentionYearlyParameters: {
	// The number of yearly backups to keep. Must be between 1 and 9999
	// +kubebuilder:validation:Required
	count?: null | float64 @go(Count,*float64)

	// The months of the year to retain backups of. Must be one of January, February, March, April, May, June, July, August, September, October, November and December.
	// +kubebuilder:validation:Required
	months: [...null | string] @go(Months,[]*string)

	// The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Required
	weekdays: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last.
	// +kubebuilder:validation:Required
	weeks: [...null | string] @go(Weeks,[]*string)
}

#InstantRestoreResourceGroupObservation: {
	// The prefix for the instant_restore_resource_group name.
	prefix?: null | string @go(Prefix,*string)

	// The suffix for the instant_restore_resource_group name.
	suffix?: null | string @go(Suffix,*string)
}

#InstantRestoreResourceGroupParameters: {
	// The prefix for the instant_restore_resource_group name.
	// +kubebuilder:validation:Required
	prefix?: null | string @go(Prefix,*string)

	// The suffix for the instant_restore_resource_group name.
	// +kubebuilder:validation:Optional
	suffix?: null | string @go(Suffix,*string)
}

// BackupPolicyVMSpec defines the desired state of BackupPolicyVM
#BackupPolicyVMSpec: {
	forProvider: #BackupPolicyVMParameters @go(ForProvider)
}

// BackupPolicyVMStatus defines the observed state of BackupPolicyVM.
#BackupPolicyVMStatus: {
	atProvider?: #BackupPolicyVMObservation @go(AtProvider)
}

// BackupPolicyVM is the Schema for the BackupPolicyVMs API. Manages an Azure Backup VM Backup Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#BackupPolicyVM: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.backup)",message="backup is a required parameter"
	spec:    #BackupPolicyVMSpec   @go(Spec)
	status?: #BackupPolicyVMStatus @go(Status)
}

// BackupPolicyVMList contains a list of BackupPolicyVMs
#BackupPolicyVMList: {
	items: [...#BackupPolicyVM] @go(Items,[]BackupPolicyVM)
}
