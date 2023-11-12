// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#CriteriaDimensionObservation: {
	// Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Operator for dimension values. Possible values are Exclude,and Include.
	operator?: null | string @go(Operator,*string)

	// List of dimension values. Use a wildcard * to collect all.
	values?: [...null | string] @go(Values,[]*string)
}

#CriteriaDimensionParameters: {
	// Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Operator for dimension values. Possible values are Exclude,and Include.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// List of dimension values. Use a wildcard * to collect all.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#FailingPeriodsObservation: {
	// Specifies the number of violations to trigger an alert. Should be smaller or equal to number_of_evaluation_periods. Possible value is integer between 1 and 6.
	minimumFailingPeriodsToTriggerAlert?: null | float64 @go(MinimumFailingPeriodsToTriggerAlert,*float64)

	// Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity window_duration and the selected number of aggregated points. Possible value is integer between 1 and 6.
	numberOfEvaluationPeriods?: null | float64 @go(NumberOfEvaluationPeriods,*float64)
}

#FailingPeriodsParameters: {
	// Specifies the number of violations to trigger an alert. Should be smaller or equal to number_of_evaluation_periods. Possible value is integer between 1 and 6.
	// +kubebuilder:validation:Required
	minimumFailingPeriodsToTriggerAlert?: null | float64 @go(MinimumFailingPeriodsToTriggerAlert,*float64)

	// Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity window_duration and the selected number of aggregated points. Possible value is integer between 1 and 6.
	// +kubebuilder:validation:Required
	numberOfEvaluationPeriods?: null | float64 @go(NumberOfEvaluationPeriods,*float64)
}

#MonitorScheduledQueryRulesAlertV2ActionObservation: {
	// List of Action Group resource IDs to invoke when the alert fires.
	actionGroups?: [...null | string] @go(ActionGroups,[]*string)

	// Specifies the properties of an alert payload.
	customProperties?: {[string]: null | string} @go(CustomProperties,map[string]*string)
}

#MonitorScheduledQueryRulesAlertV2ActionParameters: {
	// List of Action Group resource IDs to invoke when the alert fires.
	// +kubebuilder:validation:Optional
	actionGroups?: [...null | string] @go(ActionGroups,[]*string)

	// Specifies the properties of an alert payload.
	// +kubebuilder:validation:Optional
	customProperties?: {[string]: null | string} @go(CustomProperties,map[string]*string)
}

#MonitorScheduledQueryRulesAlertV2CriteriaObservation: {
	// A dimension block as defined below.
	dimension?: [...#CriteriaDimensionObservation] @go(Dimension,[]CriteriaDimensionObservation)

	// A failing_periods block as defined below.
	failingPeriods?: [...#FailingPeriodsObservation] @go(FailingPeriods,[]FailingPeriodsObservation)

	// Specifies the column containing the metric measure number.
	metricMeasureColumn?: null | string @go(MetricMeasureColumn,*string)

	// Specifies the criteria operator. Possible values are Equal, GreaterThan, GreaterThanOrEqual, LessThan,and LessThanOrEqual.
	operator?: null | string @go(Operator,*string)

	// The query to run on logs. The results returned by this query are used to populate the alert.
	query?: null | string @go(Query,*string)

	// Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
	resourceIdColumn?: null | string @go(ResourceIDColumn,*string)

	// Specifies the criteria threshold value that activates the alert.
	threshold?: null | float64 @go(Threshold,*float64)

	// The type of aggregation to apply to the data points in aggregation granularity. Possible values are Average, Count, Maximum, Minimum,and Total.
	timeAggregationMethod?: null | string @go(TimeAggregationMethod,*string)
}

#MonitorScheduledQueryRulesAlertV2CriteriaParameters: {
	// A dimension block as defined below.
	// +kubebuilder:validation:Optional
	dimension?: [...#CriteriaDimensionParameters] @go(Dimension,[]CriteriaDimensionParameters)

	// A failing_periods block as defined below.
	// +kubebuilder:validation:Optional
	failingPeriods?: [...#FailingPeriodsParameters] @go(FailingPeriods,[]FailingPeriodsParameters)

	// Specifies the column containing the metric measure number.
	// +kubebuilder:validation:Optional
	metricMeasureColumn?: null | string @go(MetricMeasureColumn,*string)

	// Specifies the criteria operator. Possible values are Equal, GreaterThan, GreaterThanOrEqual, LessThan,and LessThanOrEqual.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// The query to run on logs. The results returned by this query are used to populate the alert.
	// +kubebuilder:validation:Required
	query?: null | string @go(Query,*string)

	// Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
	// +kubebuilder:validation:Optional
	resourceIdColumn?: null | string @go(ResourceIDColumn,*string)

	// Specifies the criteria threshold value that activates the alert.
	// +kubebuilder:validation:Required
	threshold?: null | float64 @go(Threshold,*float64)

	// The type of aggregation to apply to the data points in aggregation granularity. Possible values are Average, Count, Maximum, Minimum,and Total.
	// +kubebuilder:validation:Required
	timeAggregationMethod?: null | string @go(TimeAggregationMethod,*string)
}

#MonitorScheduledQueryRulesAlertV2Observation: {
	// An action block as defined below.
	action?: [...#MonitorScheduledQueryRulesAlertV2ActionObservation] @go(Action,[]MonitorScheduledQueryRulesAlertV2ActionObservation)

	// Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be true or false. The default is false.
	autoMitigationEnabled?: null | bool @go(AutoMitigationEnabled,*bool)

	// The api-version used when creating this alert rule.
	createdWithApiVersion?: null | string @go(CreatedWithAPIVersion,*string)

	// A criteria block as defined below.
	criteria?: [...#MonitorScheduledQueryRulesAlertV2CriteriaObservation] @go(Criteria,[]MonitorScheduledQueryRulesAlertV2CriteriaObservation)

	// Specifies the description of the scheduled query rule.
	description?: null | string @go(Description,*string)

	// Specifies the display name of the alert rule.
	displayName?: null | string @go(DisplayName,*string)

	// Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be true or false. The default is true.
	enabled?: null | bool @go(Enabled,*bool)

	// How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D.
	evaluationFrequency?: null | string @go(EvaluationFrequency,*string)

	// The ID of the Monitor Scheduled Query Rule.
	id?: null | string @go(ID,*string)

	// True if this alert rule is a legacy Log Analytic Rule.
	isALegacyLogAnalyticsRule?: null | bool @go(IsALegacyLogAnalyticsRule,*bool)

	// The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage.
	isWorkspaceAlertsStorageConfigured?: null | bool @go(IsWorkspaceAlertsStorageConfigured,*bool)

	// Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D and P2D.
	muteActionsAfterAlertDuration?: null | string @go(MuteActionsAfterAlertDuration,*string)

	// Set this if the alert evaluation period is different from the query time range. If not specified, the value is window_duration*number_of_evaluation_periods. Possible values are PT5M, PT10M, PT15M, PT20M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D and P2D.
	queryTimeRangeOverride?: null | string @go(QueryTimeRangeOverride,*string)

	// Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
	scopes?: [...null | string] @go(Scopes,[]*string)

	// Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
	severity?: null | float64 @go(Severity,*float64)

	// Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
	skipQueryValidation?: null | bool @go(SkipQueryValidation,*bool)

	// A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
	targetResourceTypes?: [...null | string] @go(TargetResourceTypes,[]*string)

	// Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If evaluation_frequency is PT1M, possible values are PT1M, PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, and PT6H. Otherwise, possible values are PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D, and P2D.
	windowDuration?: null | string @go(WindowDuration,*string)

	// Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be true or false. The default is false.
	workspaceAlertsStorageEnabled?: null | bool @go(WorkspaceAlertsStorageEnabled,*bool)
}

#MonitorScheduledQueryRulesAlertV2Parameters: {
	// An action block as defined below.
	// +kubebuilder:validation:Optional
	action?: [...#MonitorScheduledQueryRulesAlertV2ActionParameters] @go(Action,[]MonitorScheduledQueryRulesAlertV2ActionParameters)

	// Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be true or false. The default is false.
	// +kubebuilder:validation:Optional
	autoMitigationEnabled?: null | bool @go(AutoMitigationEnabled,*bool)

	// A criteria block as defined below.
	// +kubebuilder:validation:Optional
	criteria?: [...#MonitorScheduledQueryRulesAlertV2CriteriaParameters] @go(Criteria,[]MonitorScheduledQueryRulesAlertV2CriteriaParameters)

	// Specifies the description of the scheduled query rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the display name of the alert rule.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be true or false. The default is true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D.
	// +kubebuilder:validation:Optional
	evaluationFrequency?: null | string @go(EvaluationFrequency,*string)

	// Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D and P2D.
	// +kubebuilder:validation:Optional
	muteActionsAfterAlertDuration?: null | string @go(MuteActionsAfterAlertDuration,*string)

	// Set this if the alert evaluation period is different from the query time range. If not specified, the value is window_duration*number_of_evaluation_periods. Possible values are PT5M, PT10M, PT15M, PT20M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D and P2D.
	// +kubebuilder:validation:Optional
	queryTimeRangeOverride?: null | string @go(QueryTimeRangeOverride,*string)

	// Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
	// +crossplane:generate:reference:type=ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	scopes?: [...null | string] @go(Scopes,[]*string)

	// Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
	// +kubebuilder:validation:Optional
	severity?: null | float64 @go(Severity,*float64)

	// Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
	// +kubebuilder:validation:Optional
	skipQueryValidation?: null | bool @go(SkipQueryValidation,*bool)

	// A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
	// +kubebuilder:validation:Optional
	targetResourceTypes?: [...null | string] @go(TargetResourceTypes,[]*string)

	// Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If evaluation_frequency is PT1M, possible values are PT1M, PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, and PT6H. Otherwise, possible values are PT5M, PT10M, PT15M, PT30M, PT45M, PT1H, PT2H, PT3H, PT4H, PT5H, PT6H, P1D, and P2D.
	// +kubebuilder:validation:Optional
	windowDuration?: null | string @go(WindowDuration,*string)

	// Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be true or false. The default is false.
	// +kubebuilder:validation:Optional
	workspaceAlertsStorageEnabled?: null | bool @go(WorkspaceAlertsStorageEnabled,*bool)
}

// MonitorScheduledQueryRulesAlertV2Spec defines the desired state of MonitorScheduledQueryRulesAlertV2
#MonitorScheduledQueryRulesAlertV2Spec: {
	forProvider: #MonitorScheduledQueryRulesAlertV2Parameters @go(ForProvider)
}

// MonitorScheduledQueryRulesAlertV2Status defines the observed state of MonitorScheduledQueryRulesAlertV2.
#MonitorScheduledQueryRulesAlertV2Status: {
	atProvider?: #MonitorScheduledQueryRulesAlertV2Observation @go(AtProvider)
}

// MonitorScheduledQueryRulesAlertV2 is the Schema for the MonitorScheduledQueryRulesAlertV2s API. Manages an AlertingAction Scheduled Query Rules Version 2 resource within Azure Monitor
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorScheduledQueryRulesAlertV2: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.criteria)",message="criteria is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.severity)",message="severity is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.windowDuration)",message="windowDuration is a required parameter"
	spec:    #MonitorScheduledQueryRulesAlertV2Spec   @go(Spec)
	status?: #MonitorScheduledQueryRulesAlertV2Status @go(Status)
}

// MonitorScheduledQueryRulesAlertV2List contains a list of MonitorScheduledQueryRulesAlertV2s
#MonitorScheduledQueryRulesAlertV2List: {
	items: [...#MonitorScheduledQueryRulesAlertV2] @go(Items,[]MonitorScheduledQueryRulesAlertV2)
}
