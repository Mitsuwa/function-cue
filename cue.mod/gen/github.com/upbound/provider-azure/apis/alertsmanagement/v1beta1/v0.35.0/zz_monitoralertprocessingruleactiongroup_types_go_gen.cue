// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/alertsmanagement/v1beta1

package v1beta1

#AlertRuleNameInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#AlertRuleNameObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#AlertRuleNameParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#DailyInitParameters: {
	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#DailyObservation: {
	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#DailyParameters: {
	// Specifies the recurrence end time (H:M:S).
	// +kubebuilder:validation:Optional
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	// +kubebuilder:validation:Optional
	startTime?: null | string @go(StartTime,*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertContextInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertContextObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertContextParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionDescriptionInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionDescriptionObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionDescriptionParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionInitParameters: {
	// A alert_context block as defined above.
	alertContext?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertContextInitParameters] @go(AlertContext,[]MonitorAlertProcessingRuleActionGroupConditionAlertContextInitParameters)

	// A alert_rule_id block as defined above.
	alertRuleId?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDInitParameters] @go(AlertRuleID,[]MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDInitParameters)

	// A alert_rule_name block as defined above.
	alertRuleName?: [...#AlertRuleNameInitParameters] @go(AlertRuleName,[]AlertRuleNameInitParameters)

	// A description block as defined below.
	description?: [...#MonitorAlertProcessingRuleActionGroupConditionDescriptionInitParameters] @go(Description,[]MonitorAlertProcessingRuleActionGroupConditionDescriptionInitParameters)

	// A monitor_condition block as defined below.
	monitorCondition?: [...#MonitorConditionInitParameters] @go(MonitorCondition,[]MonitorConditionInitParameters)

	// A monitor_service block as defined below.
	monitorService?: [...#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceInitParameters] @go(MonitorService,[]MonitorAlertProcessingRuleActionGroupConditionMonitorServiceInitParameters)

	// A severity block as defined below.
	severity?: [...#MonitorAlertProcessingRuleActionGroupConditionSeverityInitParameters] @go(Severity,[]MonitorAlertProcessingRuleActionGroupConditionSeverityInitParameters)

	// A signal_type block as defined below.
	signalType?: [...#SignalTypeInitParameters] @go(SignalType,[]SignalTypeInitParameters)

	// A target_resource block as defined below.
	targetResource?: [...#TargetResourceInitParameters] @go(TargetResource,[]TargetResourceInitParameters)

	// A target_resource_group block as defined below.
	targetResourceGroup?: [...#TargetResourceGroupInitParameters] @go(TargetResourceGroup,[]TargetResourceGroupInitParameters)

	// A target_resource_type block as defined below.
	targetResourceType?: [...#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeInitParameters] @go(TargetResourceType,[]MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeInitParameters)
}

#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionObservation: {
	// A alert_context block as defined above.
	alertContext?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertContextObservation] @go(AlertContext,[]MonitorAlertProcessingRuleActionGroupConditionAlertContextObservation)

	// A alert_rule_id block as defined above.
	alertRuleId?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDObservation] @go(AlertRuleID,[]MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDObservation)

	// A alert_rule_name block as defined above.
	alertRuleName?: [...#AlertRuleNameObservation] @go(AlertRuleName,[]AlertRuleNameObservation)

	// A description block as defined below.
	description?: [...#MonitorAlertProcessingRuleActionGroupConditionDescriptionObservation] @go(Description,[]MonitorAlertProcessingRuleActionGroupConditionDescriptionObservation)

	// A monitor_condition block as defined below.
	monitorCondition?: [...#MonitorConditionObservation] @go(MonitorCondition,[]MonitorConditionObservation)

	// A monitor_service block as defined below.
	monitorService?: [...#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceObservation] @go(MonitorService,[]MonitorAlertProcessingRuleActionGroupConditionMonitorServiceObservation)

	// A severity block as defined below.
	severity?: [...#MonitorAlertProcessingRuleActionGroupConditionSeverityObservation] @go(Severity,[]MonitorAlertProcessingRuleActionGroupConditionSeverityObservation)

	// A signal_type block as defined below.
	signalType?: [...#SignalTypeObservation] @go(SignalType,[]SignalTypeObservation)

	// A target_resource block as defined below.
	targetResource?: [...#TargetResourceObservation] @go(TargetResource,[]TargetResourceObservation)

	// A target_resource_group block as defined below.
	targetResourceGroup?: [...#TargetResourceGroupObservation] @go(TargetResourceGroup,[]TargetResourceGroupObservation)

	// A target_resource_type block as defined below.
	targetResourceType?: [...#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeObservation] @go(TargetResourceType,[]MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeObservation)
}

#MonitorAlertProcessingRuleActionGroupConditionParameters: {
	// A alert_context block as defined above.
	// +kubebuilder:validation:Optional
	alertContext?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertContextParameters] @go(AlertContext,[]MonitorAlertProcessingRuleActionGroupConditionAlertContextParameters)

	// A alert_rule_id block as defined above.
	// +kubebuilder:validation:Optional
	alertRuleId?: [...#MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDParameters] @go(AlertRuleID,[]MonitorAlertProcessingRuleActionGroupConditionAlertRuleIDParameters)

	// A alert_rule_name block as defined above.
	// +kubebuilder:validation:Optional
	alertRuleName?: [...#AlertRuleNameParameters] @go(AlertRuleName,[]AlertRuleNameParameters)

	// A description block as defined below.
	// +kubebuilder:validation:Optional
	description?: [...#MonitorAlertProcessingRuleActionGroupConditionDescriptionParameters] @go(Description,[]MonitorAlertProcessingRuleActionGroupConditionDescriptionParameters)

	// A monitor_condition block as defined below.
	// +kubebuilder:validation:Optional
	monitorCondition?: [...#MonitorConditionParameters] @go(MonitorCondition,[]MonitorConditionParameters)

	// A monitor_service block as defined below.
	// +kubebuilder:validation:Optional
	monitorService?: [...#MonitorAlertProcessingRuleActionGroupConditionMonitorServiceParameters] @go(MonitorService,[]MonitorAlertProcessingRuleActionGroupConditionMonitorServiceParameters)

	// A severity block as defined below.
	// +kubebuilder:validation:Optional
	severity?: [...#MonitorAlertProcessingRuleActionGroupConditionSeverityParameters] @go(Severity,[]MonitorAlertProcessingRuleActionGroupConditionSeverityParameters)

	// A signal_type block as defined below.
	// +kubebuilder:validation:Optional
	signalType?: [...#SignalTypeParameters] @go(SignalType,[]SignalTypeParameters)

	// A target_resource block as defined below.
	// +kubebuilder:validation:Optional
	targetResource?: [...#TargetResourceParameters] @go(TargetResource,[]TargetResourceParameters)

	// A target_resource_group block as defined below.
	// +kubebuilder:validation:Optional
	targetResourceGroup?: [...#TargetResourceGroupParameters] @go(TargetResourceGroup,[]TargetResourceGroupParameters)

	// A target_resource_type block as defined below.
	// +kubebuilder:validation:Optional
	targetResourceType?: [...#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeParameters] @go(TargetResourceType,[]MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeParameters)
}

#MonitorAlertProcessingRuleActionGroupConditionSeverityInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionSeverityObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionSeverityParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupConditionTargetResourceTypeParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorAlertProcessingRuleActionGroupInitParameters: {
	// A condition block as defined below.
	condition?: [...#MonitorAlertProcessingRuleActionGroupConditionInitParameters] @go(Condition,[]MonitorAlertProcessingRuleActionGroupConditionInitParameters)

	// Specifies a description for the Alert Processing Rule.
	description?: null | string @go(Description,*string)

	// Should the Alert Processing Rule be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// A schedule block as defined below.
	schedule?: [...#MonitorAlertProcessingRuleActionGroupScheduleInitParameters] @go(Schedule,[]MonitorAlertProcessingRuleActionGroupScheduleInitParameters)

	// A mapping of tags which should be assigned to the Alert Processing Rule.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorAlertProcessingRuleActionGroupObservation: {
	// Specifies a list of Action Group IDs.
	addActionGroupIds?: [...null | string] @go(AddActionGroupIds,[]*string)

	// A condition block as defined below.
	condition?: [...#MonitorAlertProcessingRuleActionGroupConditionObservation] @go(Condition,[]MonitorAlertProcessingRuleActionGroupConditionObservation)

	// Specifies a description for the Alert Processing Rule.
	description?: null | string @go(Description,*string)

	// Should the Alert Processing Rule be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Alert Processing Rule.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A schedule block as defined below.
	schedule?: [...#MonitorAlertProcessingRuleActionGroupScheduleObservation] @go(Schedule,[]MonitorAlertProcessingRuleActionGroupScheduleObservation)

	// A list of resource IDs which will be the target of alert processing rule.
	scopes?: [...null | string] @go(Scopes,[]*string)

	// A mapping of tags which should be assigned to the Alert Processing Rule.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorAlertProcessingRuleActionGroupParameters: {
	// Specifies a list of Action Group IDs.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.MonitorActionGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	addActionGroupIds?: [...null | string] @go(AddActionGroupIds,[]*string)

	// A condition block as defined below.
	// +kubebuilder:validation:Optional
	condition?: [...#MonitorAlertProcessingRuleActionGroupConditionParameters] @go(Condition,[]MonitorAlertProcessingRuleActionGroupConditionParameters)

	// Specifies a description for the Alert Processing Rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Should the Alert Processing Rule be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A schedule block as defined below.
	// +kubebuilder:validation:Optional
	schedule?: [...#MonitorAlertProcessingRuleActionGroupScheduleParameters] @go(Schedule,[]MonitorAlertProcessingRuleActionGroupScheduleParameters)

	// A list of resource IDs which will be the target of alert processing rule.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	scopes?: [...null | string] @go(Scopes,[]*string)

	// A mapping of tags which should be assigned to the Alert Processing Rule.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorAlertProcessingRuleActionGroupScheduleInitParameters: {
	// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
	effectiveFrom?: null | string @go(EffectiveFrom,*string)

	// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
	effectiveUntil?: null | string @go(EffectiveUntil,*string)

	// A recurrence block as defined above.
	recurrence?: [...#RecurrenceInitParameters] @go(Recurrence,[]RecurrenceInitParameters)

	// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to UTC. possible values are defined here.
	timeZone?: null | string @go(TimeZone,*string)
}

#MonitorAlertProcessingRuleActionGroupScheduleObservation: {
	// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
	effectiveFrom?: null | string @go(EffectiveFrom,*string)

	// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
	effectiveUntil?: null | string @go(EffectiveUntil,*string)

	// A recurrence block as defined above.
	recurrence?: [...#RecurrenceObservation] @go(Recurrence,[]RecurrenceObservation)

	// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to UTC. possible values are defined here.
	timeZone?: null | string @go(TimeZone,*string)
}

#MonitorAlertProcessingRuleActionGroupScheduleParameters: {
	// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
	// +kubebuilder:validation:Optional
	effectiveFrom?: null | string @go(EffectiveFrom,*string)

	// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
	// +kubebuilder:validation:Optional
	effectiveUntil?: null | string @go(EffectiveUntil,*string)

	// A recurrence block as defined above.
	// +kubebuilder:validation:Optional
	recurrence?: [...#RecurrenceParameters] @go(Recurrence,[]RecurrenceParameters)

	// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to UTC. possible values are defined here.
	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

#MonitorConditionInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorConditionObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorConditionParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#MonthlyInitParameters: {
	// Specifies a list of dayOfMonth to recurrence. Possible values are integers between 1 - 31.
	daysOfMonth?: [...null | float64] @go(DaysOfMonth,[]*float64)

	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#MonthlyObservation: {
	// Specifies a list of dayOfMonth to recurrence. Possible values are integers between 1 - 31.
	daysOfMonth?: [...null | float64] @go(DaysOfMonth,[]*float64)

	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#MonthlyParameters: {
	// Specifies a list of dayOfMonth to recurrence. Possible values are integers between 1 - 31.
	// +kubebuilder:validation:Optional
	daysOfMonth?: [...null | float64] @go(DaysOfMonth,[]*float64)

	// Specifies the recurrence end time (H:M:S).
	// +kubebuilder:validation:Optional
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	// +kubebuilder:validation:Optional
	startTime?: null | string @go(StartTime,*string)
}

#RecurrenceInitParameters: {
	// One or more daily blocks as defined above.
	daily?: [...#DailyInitParameters] @go(Daily,[]DailyInitParameters)

	// One or more monthly blocks as defined above.
	monthly?: [...#MonthlyInitParameters] @go(Monthly,[]MonthlyInitParameters)

	// One or more weekly blocks as defined below.
	weekly?: [...#WeeklyInitParameters] @go(Weekly,[]WeeklyInitParameters)
}

#RecurrenceObservation: {
	// One or more daily blocks as defined above.
	daily?: [...#DailyObservation] @go(Daily,[]DailyObservation)

	// One or more monthly blocks as defined above.
	monthly?: [...#MonthlyObservation] @go(Monthly,[]MonthlyObservation)

	// One or more weekly blocks as defined below.
	weekly?: [...#WeeklyObservation] @go(Weekly,[]WeeklyObservation)
}

#RecurrenceParameters: {
	// One or more daily blocks as defined above.
	// +kubebuilder:validation:Optional
	daily?: [...#DailyParameters] @go(Daily,[]DailyParameters)

	// One or more monthly blocks as defined above.
	// +kubebuilder:validation:Optional
	monthly?: [...#MonthlyParameters] @go(Monthly,[]MonthlyParameters)

	// One or more weekly blocks as defined below.
	// +kubebuilder:validation:Optional
	weekly?: [...#WeeklyParameters] @go(Weekly,[]WeeklyParameters)
}

#SignalTypeInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#SignalTypeObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#SignalTypeParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceGroupInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceGroupObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceGroupParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceInitParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceObservation: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceParameters: {
	// The operator for a given condition. Possible values are Equals, NotEquals, Contains, and DoesNotContain.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#WeeklyInitParameters: {
	// Specifies a list of dayOfWeek to recurrence. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, and Saturday.
	daysOfWeek?: [...null | string] @go(DaysOfWeek,[]*string)

	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#WeeklyObservation: {
	// Specifies a list of dayOfWeek to recurrence. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, and Saturday.
	daysOfWeek?: [...null | string] @go(DaysOfWeek,[]*string)

	// Specifies the recurrence end time (H:M:S).
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	startTime?: null | string @go(StartTime,*string)
}

#WeeklyParameters: {
	// Specifies a list of dayOfWeek to recurrence. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, and Saturday.
	// +kubebuilder:validation:Optional
	daysOfWeek?: [...null | string] @go(DaysOfWeek,[]*string)

	// Specifies the recurrence end time (H:M:S).
	// +kubebuilder:validation:Optional
	endTime?: null | string @go(EndTime,*string)

	// Specifies the recurrence start time (H:M:S).
	// +kubebuilder:validation:Optional
	startTime?: null | string @go(StartTime,*string)
}

// MonitorAlertProcessingRuleActionGroupSpec defines the desired state of MonitorAlertProcessingRuleActionGroup
#MonitorAlertProcessingRuleActionGroupSpec: {
	forProvider: #MonitorAlertProcessingRuleActionGroupParameters @go(ForProvider)

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
	initProvider?: #MonitorAlertProcessingRuleActionGroupInitParameters @go(InitProvider)
}

// MonitorAlertProcessingRuleActionGroupStatus defines the observed state of MonitorAlertProcessingRuleActionGroup.
#MonitorAlertProcessingRuleActionGroupStatus: {
	atProvider?: #MonitorAlertProcessingRuleActionGroupObservation @go(AtProvider)
}

// MonitorAlertProcessingRuleActionGroup is the Schema for the MonitorAlertProcessingRuleActionGroups API. Manages an Alert Processing Rule which apply action group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorAlertProcessingRuleActionGroup: {
	spec:    #MonitorAlertProcessingRuleActionGroupSpec   @go(Spec)
	status?: #MonitorAlertProcessingRuleActionGroupStatus @go(Status)
}

// MonitorAlertProcessingRuleActionGroupList contains a list of MonitorAlertProcessingRuleActionGroups
#MonitorAlertProcessingRuleActionGroupList: {
	items: [...#MonitorAlertProcessingRuleActionGroup] @go(Items,[]MonitorAlertProcessingRuleActionGroup)
}
