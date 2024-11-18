// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/automation/v1beta1

package v1beta1

#MonthlyOccurrenceInitParameters: {
	// Day of the occurrence. Must be one of Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
	day?: null | string @go(Day,*string)

	// Occurrence of the week within the month. Must be between 1 and 5. -1 for last week within the month.
	occurrence?: null | float64 @go(Occurrence,*float64)
}

#MonthlyOccurrenceObservation: {
	// Day of the occurrence. Must be one of Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
	day?: null | string @go(Day,*string)

	// Occurrence of the week within the month. Must be between 1 and 5. -1 for last week within the month.
	occurrence?: null | float64 @go(Occurrence,*float64)
}

#MonthlyOccurrenceParameters: {
	// Day of the occurrence. Must be one of Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
	// +kubebuilder:validation:Optional
	day?: null | string @go(Day,*string)

	// Occurrence of the week within the month. Must be between 1 and 5. -1 for last week within the month.
	// +kubebuilder:validation:Optional
	occurrence?: null | float64 @go(Occurrence,*float64)
}

#ScheduleInitParameters: {
	// A description for this Schedule.
	description?: null | string @go(Description,*string)

	// The end time of the schedule.
	expiryTime?: null | string @go(ExpiryTime,*string)

	// The frequency of the schedule. - can be either OneTime, Day, Hour, Week, or Month.
	frequency?: null | string @go(Frequency,*string)

	// The number of frequencys between runs. Only valid when frequency is Day, Hour, Week, or Month and defaults to 1.
	interval?: null | float64 @go(Interval,*float64)

	// List of days of the month that the job should execute on. Must be between 1 and 31. -1 for last day of the month. Only valid when frequency is Month.
	monthDays?: [...null | float64] @go(MonthDays,[]*float64)

	// List of monthly_occurrence blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is Month. The monthly_occurrence block supports fields documented below.
	monthlyOccurrence?: [...#MonthlyOccurrenceInitParameters] @go(MonthlyOccurrence,[]MonthlyOccurrenceInitParameters)

	// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
	startTime?: null | string @go(StartTime,*string)

	// The timezone of the start time. Defaults to Etc/UTC. For possible values see: https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows
	timezone?: null | string @go(Timezone,*string)

	// List of days of the week that the job should execute on. Only valid when frequency is Week. Possible values are Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday.
	weekDays?: [...null | string] @go(WeekDays,[]*string)
}

#ScheduleObservation: {
	// The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// A description for this Schedule.
	description?: null | string @go(Description,*string)

	// The end time of the schedule.
	expiryTime?: null | string @go(ExpiryTime,*string)

	// The frequency of the schedule. - can be either OneTime, Day, Hour, Week, or Month.
	frequency?: null | string @go(Frequency,*string)

	// The Automation Schedule ID.
	id?: null | string @go(ID,*string)

	// The number of frequencys between runs. Only valid when frequency is Day, Hour, Week, or Month and defaults to 1.
	interval?: null | float64 @go(Interval,*float64)

	// List of days of the month that the job should execute on. Must be between 1 and 31. -1 for last day of the month. Only valid when frequency is Month.
	monthDays?: [...null | float64] @go(MonthDays,[]*float64)

	// List of monthly_occurrence blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is Month. The monthly_occurrence block supports fields documented below.
	monthlyOccurrence?: [...#MonthlyOccurrenceObservation] @go(MonthlyOccurrence,[]MonthlyOccurrenceObservation)

	// The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
	startTime?: null | string @go(StartTime,*string)

	// The timezone of the start time. Defaults to Etc/UTC. For possible values see: https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows
	timezone?: null | string @go(Timezone,*string)

	// List of days of the week that the job should execute on. Only valid when frequency is Week. Possible values are Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday.
	weekDays?: [...null | string] @go(WeekDays,[]*string)
}

#ScheduleParameters: {
	// The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.Account
	// +kubebuilder:validation:Optional
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// A description for this Schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The end time of the schedule.
	// +kubebuilder:validation:Optional
	expiryTime?: null | string @go(ExpiryTime,*string)

	// The frequency of the schedule. - can be either OneTime, Day, Hour, Week, or Month.
	// +kubebuilder:validation:Optional
	frequency?: null | string @go(Frequency,*string)

	// The number of frequencys between runs. Only valid when frequency is Day, Hour, Week, or Month and defaults to 1.
	// +kubebuilder:validation:Optional
	interval?: null | float64 @go(Interval,*float64)

	// List of days of the month that the job should execute on. Must be between 1 and 31. -1 for last day of the month. Only valid when frequency is Month.
	// +kubebuilder:validation:Optional
	monthDays?: [...null | float64] @go(MonthDays,[]*float64)

	// List of monthly_occurrence blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is Month. The monthly_occurrence block supports fields documented below.
	// +kubebuilder:validation:Optional
	monthlyOccurrence?: [...#MonthlyOccurrenceParameters] @go(MonthlyOccurrence,[]MonthlyOccurrenceParameters)

	// The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
	// +kubebuilder:validation:Optional
	startTime?: null | string @go(StartTime,*string)

	// The timezone of the start time. Defaults to Etc/UTC. For possible values see: https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows
	// +kubebuilder:validation:Optional
	timezone?: null | string @go(Timezone,*string)

	// List of days of the week that the job should execute on. Only valid when frequency is Week. Possible values are Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday.
	// +kubebuilder:validation:Optional
	weekDays?: [...null | string] @go(WeekDays,[]*string)
}

// ScheduleSpec defines the desired state of Schedule
#ScheduleSpec: {
	forProvider: #ScheduleParameters @go(ForProvider)

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
	initProvider?: #ScheduleInitParameters @go(InitProvider)
}

// ScheduleStatus defines the observed state of Schedule.
#ScheduleStatus: {
	atProvider?: #ScheduleObservation @go(AtProvider)
}

// Schedule is the Schema for the Schedules API. Manages a Automation Schedule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Schedule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.frequency) || (has(self.initProvider) && has(self.initProvider.frequency))",message="spec.forProvider.frequency is a required parameter"
	spec:    #ScheduleSpec   @go(Spec)
	status?: #ScheduleStatus @go(Status)
}

// ScheduleList contains a list of Schedules
#ScheduleList: {
	items: [...#Schedule] @go(Items,[]Schedule)
}
