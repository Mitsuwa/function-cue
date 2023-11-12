// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/recoveryservices/v1beta1

package v1beta1

#BackupPolicyVMWorkloadInitParameters: {
	// One or more protection_policy blocks as defined below.
	protectionPolicy?: [...#ProtectionPolicyInitParameters] @go(ProtectionPolicy,[]ProtectionPolicyInitParameters)

	// A settings block as defined below.
	settings?: [...#SettingsInitParameters] @go(Settings,[]SettingsInitParameters)

	// The VM Workload type for the Backup Policy. Possible values are SQLDataBase and SAPHanaDatabase. Changing this forces a new resource to be created.
	workloadType?: null | string @go(WorkloadType,*string)
}

#BackupPolicyVMWorkloadObservation: {
	// The ID of the Azure VM Workload Backup Policy.
	id?: null | string @go(ID,*string)

	// One or more protection_policy blocks as defined below.
	protectionPolicy?: [...#ProtectionPolicyObservation] @go(ProtectionPolicy,[]ProtectionPolicyObservation)

	// The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A settings block as defined below.
	settings?: [...#SettingsObservation] @go(Settings,[]SettingsObservation)

	// The VM Workload type for the Backup Policy. Possible values are SQLDataBase and SAPHanaDatabase. Changing this forces a new resource to be created.
	workloadType?: null | string @go(WorkloadType,*string)
}

#BackupPolicyVMWorkloadParameters: {
	// One or more protection_policy blocks as defined below.
	// +kubebuilder:validation:Optional
	protectionPolicy?: [...#ProtectionPolicyParameters] @go(ProtectionPolicy,[]ProtectionPolicyParameters)

	// The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.Vault
	// +kubebuilder:validation:Optional
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A settings block as defined below.
	// +kubebuilder:validation:Optional
	settings?: [...#SettingsParameters] @go(Settings,[]SettingsParameters)

	// The VM Workload type for the Backup Policy. Possible values are SQLDataBase and SAPHanaDatabase. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	workloadType?: null | string @go(WorkloadType,*string)
}

#ProtectionPolicyBackupInitParameters: {
	// The backup frequency for the VM Workload Backup Policy. Possible values are Daily and Weekly.
	frequency?: null | string @go(Frequency,*string)

	// The backup frequency in minutes for the VM Workload Backup Policy. Possible values are 15, 30, 60, 120, 240, 480, 720 and 1440.
	frequencyInMinutes?: null | float64 @go(FrequencyInMinutes,*float64)

	// The time of day to perform the backup in 24hour format.
	time?: null | string @go(Time,*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyBackupObservation: {
	// The backup frequency for the VM Workload Backup Policy. Possible values are Daily and Weekly.
	frequency?: null | string @go(Frequency,*string)

	// The backup frequency in minutes for the VM Workload Backup Policy. Possible values are 15, 30, 60, 120, 240, 480, 720 and 1440.
	frequencyInMinutes?: null | float64 @go(FrequencyInMinutes,*float64)

	// The time of day to perform the backup in 24hour format.
	time?: null | string @go(Time,*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyBackupParameters: {
	// The backup frequency for the VM Workload Backup Policy. Possible values are Daily and Weekly.
	// +kubebuilder:validation:Optional
	frequency?: null | string @go(Frequency,*string)

	// The backup frequency in minutes for the VM Workload Backup Policy. Possible values are 15, 30, 60, 120, 240, 480, 720 and 1440.
	// +kubebuilder:validation:Optional
	frequencyInMinutes?: null | float64 @go(FrequencyInMinutes,*float64)

	// The time of day to perform the backup in 24hour format.
	// +kubebuilder:validation:Optional
	time?: null | string @go(Time,*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Optional
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyInitParameters: {
	// A backup block as defined below.
	backup?: [...#ProtectionPolicyBackupInitParameters] @go(Backup,[]ProtectionPolicyBackupInitParameters)

	// The type of the VM Workload Backup Policy. Possible values are Differential, Full, Incremental and Log.
	policyType?: null | string @go(PolicyType,*string)

	// A retention_daily block as defined below.
	retentionDaily?: [...#ProtectionPolicyRetentionDailyInitParameters] @go(RetentionDaily,[]ProtectionPolicyRetentionDailyInitParameters)

	// A retention_monthly block as defined below.
	retentionMonthly?: [...#ProtectionPolicyRetentionMonthlyInitParameters] @go(RetentionMonthly,[]ProtectionPolicyRetentionMonthlyInitParameters)

	// A retention_weekly block as defined below.
	retentionWeekly?: [...#ProtectionPolicyRetentionWeeklyInitParameters] @go(RetentionWeekly,[]ProtectionPolicyRetentionWeeklyInitParameters)

	// A retention_yearly block as defined below.
	retentionYearly?: [...#ProtectionPolicyRetentionYearlyInitParameters] @go(RetentionYearly,[]ProtectionPolicyRetentionYearlyInitParameters)

	// A simple_retention block as defined below.
	simpleRetention?: [...#SimpleRetentionInitParameters] @go(SimpleRetention,[]SimpleRetentionInitParameters)
}

#ProtectionPolicyObservation: {
	// A backup block as defined below.
	backup?: [...#ProtectionPolicyBackupObservation] @go(Backup,[]ProtectionPolicyBackupObservation)

	// The type of the VM Workload Backup Policy. Possible values are Differential, Full, Incremental and Log.
	policyType?: null | string @go(PolicyType,*string)

	// A retention_daily block as defined below.
	retentionDaily?: [...#ProtectionPolicyRetentionDailyObservation] @go(RetentionDaily,[]ProtectionPolicyRetentionDailyObservation)

	// A retention_monthly block as defined below.
	retentionMonthly?: [...#ProtectionPolicyRetentionMonthlyObservation] @go(RetentionMonthly,[]ProtectionPolicyRetentionMonthlyObservation)

	// A retention_weekly block as defined below.
	retentionWeekly?: [...#ProtectionPolicyRetentionWeeklyObservation] @go(RetentionWeekly,[]ProtectionPolicyRetentionWeeklyObservation)

	// A retention_yearly block as defined below.
	retentionYearly?: [...#ProtectionPolicyRetentionYearlyObservation] @go(RetentionYearly,[]ProtectionPolicyRetentionYearlyObservation)

	// A simple_retention block as defined below.
	simpleRetention?: [...#SimpleRetentionObservation] @go(SimpleRetention,[]SimpleRetentionObservation)
}

#ProtectionPolicyParameters: {
	// A backup block as defined below.
	// +kubebuilder:validation:Optional
	backup: [...#ProtectionPolicyBackupParameters] @go(Backup,[]ProtectionPolicyBackupParameters)

	// The type of the VM Workload Backup Policy. Possible values are Differential, Full, Incremental and Log.
	// +kubebuilder:validation:Optional
	policyType?: null | string @go(PolicyType,*string)

	// A retention_daily block as defined below.
	// +kubebuilder:validation:Optional
	retentionDaily?: [...#ProtectionPolicyRetentionDailyParameters] @go(RetentionDaily,[]ProtectionPolicyRetentionDailyParameters)

	// A retention_monthly block as defined below.
	// +kubebuilder:validation:Optional
	retentionMonthly?: [...#ProtectionPolicyRetentionMonthlyParameters] @go(RetentionMonthly,[]ProtectionPolicyRetentionMonthlyParameters)

	// A retention_weekly block as defined below.
	// +kubebuilder:validation:Optional
	retentionWeekly?: [...#ProtectionPolicyRetentionWeeklyParameters] @go(RetentionWeekly,[]ProtectionPolicyRetentionWeeklyParameters)

	// A retention_yearly block as defined below.
	// +kubebuilder:validation:Optional
	retentionYearly?: [...#ProtectionPolicyRetentionYearlyParameters] @go(RetentionYearly,[]ProtectionPolicyRetentionYearlyParameters)

	// A simple_retention block as defined below.
	// +kubebuilder:validation:Optional
	simpleRetention?: [...#SimpleRetentionParameters] @go(SimpleRetention,[]SimpleRetentionParameters)
}

#ProtectionPolicyRetentionDailyInitParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)
}

#ProtectionPolicyRetentionDailyObservation: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)
}

#ProtectionPolicyRetentionDailyParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)
}

#ProtectionPolicyRetentionMonthlyInitParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#ProtectionPolicyRetentionMonthlyObservation: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#ProtectionPolicyRetentionMonthlyParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	// +kubebuilder:validation:Optional
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	// +kubebuilder:validation:Optional
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Optional
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	// +kubebuilder:validation:Optional
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#ProtectionPolicyRetentionWeeklyInitParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyRetentionWeeklyObservation: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyRetentionWeeklyParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Optional
	weekdays: [...null | string] @go(Weekdays,[]*string)
}

#ProtectionPolicyRetentionYearlyInitParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The months of the year to retain backups of. Possible values are January, February, March, April, May, June, July, August, September, October, November and December.
	months?: [...null | string] @go(Months,[]*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#ProtectionPolicyRetentionYearlyObservation: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The months of the year to retain backups of. Possible values are January, February, March, April, May, June, July, August, September, October, November and December.
	months?: [...null | string] @go(Months,[]*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#ProtectionPolicyRetentionYearlyParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)

	// The retention schedule format type for yearly retention policy. Possible values are Daily and Weekly.
	// +kubebuilder:validation:Optional
	formatType?: null | string @go(FormatType,*string)

	// The monthday backups to retain. Possible values are between 0 and 28.
	// +kubebuilder:validation:Optional
	monthdays?: [...null | float64] @go(Monthdays,[]*float64)

	// The months of the year to retain backups of. Possible values are January, February, March, April, May, June, July, August, September, October, November and December.
	// +kubebuilder:validation:Optional
	months: [...null | string] @go(Months,[]*string)

	// The weekday backups to retain. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday.
	// +kubebuilder:validation:Optional
	weekdays?: [...null | string] @go(Weekdays,[]*string)

	// The weeks of the month to retain backups of. Possible values are First, Second, Third, Fourth, Last.
	// +kubebuilder:validation:Optional
	weeks?: [...null | string] @go(Weeks,[]*string)
}

#SettingsInitParameters: {
	// The compression setting for the VM Workload Backup Policy. Defaults to false.
	compressionEnabled?: null | bool @go(CompressionEnabled,*bool)

	// The timezone for the VM Workload Backup Policy. The possible values are defined here.
	timeZone?: null | string @go(TimeZone,*string)
}

#SettingsObservation: {
	// The compression setting for the VM Workload Backup Policy. Defaults to false.
	compressionEnabled?: null | bool @go(CompressionEnabled,*bool)

	// The timezone for the VM Workload Backup Policy. The possible values are defined here.
	timeZone?: null | string @go(TimeZone,*string)
}

#SettingsParameters: {
	// The compression setting for the VM Workload Backup Policy. Defaults to false.
	// +kubebuilder:validation:Optional
	compressionEnabled?: null | bool @go(CompressionEnabled,*bool)

	// The timezone for the VM Workload Backup Policy. The possible values are defined here.
	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

#SimpleRetentionInitParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)
}

#SimpleRetentionObservation: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	count?: null | float64 @go(Count,*float64)
}

#SimpleRetentionParameters: {
	// The count that is used to count retention duration with duration type Days. Possible values are between 7 and 35.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)
}

// BackupPolicyVMWorkloadSpec defines the desired state of BackupPolicyVMWorkload
#BackupPolicyVMWorkloadSpec: {
	forProvider: #BackupPolicyVMWorkloadParameters @go(ForProvider)

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
	initProvider?: #BackupPolicyVMWorkloadInitParameters @go(InitProvider)
}

// BackupPolicyVMWorkloadStatus defines the observed state of BackupPolicyVMWorkload.
#BackupPolicyVMWorkloadStatus: {
	atProvider?: #BackupPolicyVMWorkloadObservation @go(AtProvider)
}

// BackupPolicyVMWorkload is the Schema for the BackupPolicyVMWorkloads API. Manages an Azure VM Workload Backup Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#BackupPolicyVMWorkload: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.protectionPolicy) || (has(self.initProvider) && has(self.initProvider.protectionPolicy))",message="spec.forProvider.protectionPolicy is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.settings) || (has(self.initProvider) && has(self.initProvider.settings))",message="spec.forProvider.settings is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.workloadType) || (has(self.initProvider) && has(self.initProvider.workloadType))",message="spec.forProvider.workloadType is a required parameter"
	spec:    #BackupPolicyVMWorkloadSpec   @go(Spec)
	status?: #BackupPolicyVMWorkloadStatus @go(Status)
}

// BackupPolicyVMWorkloadList contains a list of BackupPolicyVMWorkloads
#BackupPolicyVMWorkloadList: {
	items: [...#BackupPolicyVMWorkload] @go(Items,[]BackupPolicyVMWorkload)
}
