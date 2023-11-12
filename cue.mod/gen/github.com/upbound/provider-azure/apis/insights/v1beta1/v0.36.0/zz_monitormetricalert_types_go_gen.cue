// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#ApplicationInsightsWebTestLocationAvailabilityCriteriaInitParameters: {
	// The ID of the Application Insights Resource.
	componentId?: null | string @go(ComponentID,*string)

	// The number of failed locations.
	failedLocationCount?: null | float64 @go(FailedLocationCount,*float64)

	// The ID of the Application Insights Web Test.
	webTestId?: null | string @go(WebTestID,*string)
}

#ApplicationInsightsWebTestLocationAvailabilityCriteriaObservation: {
	// The ID of the Application Insights Resource.
	componentId?: null | string @go(ComponentID,*string)

	// The number of failed locations.
	failedLocationCount?: null | float64 @go(FailedLocationCount,*float64)

	// The ID of the Application Insights Web Test.
	webTestId?: null | string @go(WebTestID,*string)
}

#ApplicationInsightsWebTestLocationAvailabilityCriteriaParameters: {
	// The ID of the Application Insights Resource.
	// +kubebuilder:validation:Optional
	componentId?: null | string @go(ComponentID,*string)

	// The number of failed locations.
	// +kubebuilder:validation:Optional
	failedLocationCount?: null | float64 @go(FailedLocationCount,*float64)

	// The ID of the Application Insights Web Test.
	// +kubebuilder:validation:Optional
	webTestId?: null | string @go(WebTestID,*string)
}

#DimensionInitParameters: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	values?: [...null | string] @go(Values,[]*string)
}

#DimensionObservation: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	values?: [...null | string] @go(Values,[]*string)
}

#DimensionParameters: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	// +kubebuilder:validation:Optional
	values: [...null | string] @go(Values,[]*string)
}

#DynamicCriteriaDimensionInitParameters: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	values?: [...null | string] @go(Values,[]*string)
}

#DynamicCriteriaDimensionObservation: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	values?: [...null | string] @go(Values,[]*string)
}

#DynamicCriteriaDimensionParameters: {
	// The name of the Metric Alert. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// The list of dimension values.
	// +kubebuilder:validation:Optional
	values: [...null | string] @go(Values,[]*string)
}

#DynamicCriteriaInitParameters: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	aggregation?: null | string @go(Aggregation,*string)

	// The extent of deviation required to trigger an alert. Possible values are Low, Medium and High.
	alertSensitivity?: null | string @go(AlertSensitivity,*string)

	// One or more dimension blocks as defined below.
	dimension?: [...#DynamicCriteriaDimensionInitParameters] @go(Dimension,[]DynamicCriteriaDimensionInitParameters)

	// The number of violations to trigger an alert. Should be smaller or equal to evaluation_total_count. Defaults to 4.
	evaluationFailureCount?: null | float64 @go(EvaluationFailureCount,*float64)

	// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (window_size) and the selected number of aggregated points. Defaults to 4.
	evaluationTotalCount?: null | float64 @go(EvaluationTotalCount,*float64)

	// The ISO8601 date from which to start learning the metric historical data and calculate the dynamic thresholds.
	ignoreDataBefore?: null | string @go(IgnoreDataBefore,*string)

	// One of the metric names to be monitored.
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)
}

#DynamicCriteriaObservation: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	aggregation?: null | string @go(Aggregation,*string)

	// The extent of deviation required to trigger an alert. Possible values are Low, Medium and High.
	alertSensitivity?: null | string @go(AlertSensitivity,*string)

	// One or more dimension blocks as defined below.
	dimension?: [...#DynamicCriteriaDimensionObservation] @go(Dimension,[]DynamicCriteriaDimensionObservation)

	// The number of violations to trigger an alert. Should be smaller or equal to evaluation_total_count. Defaults to 4.
	evaluationFailureCount?: null | float64 @go(EvaluationFailureCount,*float64)

	// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (window_size) and the selected number of aggregated points. Defaults to 4.
	evaluationTotalCount?: null | float64 @go(EvaluationTotalCount,*float64)

	// The ISO8601 date from which to start learning the metric historical data and calculate the dynamic thresholds.
	ignoreDataBefore?: null | string @go(IgnoreDataBefore,*string)

	// One of the metric names to be monitored.
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)
}

#DynamicCriteriaParameters: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	// +kubebuilder:validation:Optional
	aggregation?: null | string @go(Aggregation,*string)

	// The extent of deviation required to trigger an alert. Possible values are Low, Medium and High.
	// +kubebuilder:validation:Optional
	alertSensitivity?: null | string @go(AlertSensitivity,*string)

	// One or more dimension blocks as defined below.
	// +kubebuilder:validation:Optional
	dimension?: [...#DynamicCriteriaDimensionParameters] @go(Dimension,[]DynamicCriteriaDimensionParameters)

	// The number of violations to trigger an alert. Should be smaller or equal to evaluation_total_count. Defaults to 4.
	// +kubebuilder:validation:Optional
	evaluationFailureCount?: null | float64 @go(EvaluationFailureCount,*float64)

	// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (window_size) and the selected number of aggregated points. Defaults to 4.
	// +kubebuilder:validation:Optional
	evaluationTotalCount?: null | float64 @go(EvaluationTotalCount,*float64)

	// The ISO8601 date from which to start learning the metric historical data and calculate the dynamic thresholds.
	// +kubebuilder:validation:Optional
	ignoreDataBefore?: null | string @go(IgnoreDataBefore,*string)

	// One of the metric names to be monitored.
	// +kubebuilder:validation:Optional
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	// +kubebuilder:validation:Optional
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are LessThan, GreaterThan and GreaterOrLessThan.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
	// +kubebuilder:validation:Optional
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)
}

#MonitorMetricAlertActionInitParameters: {
	// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
	webhookProperties?: {[string]: null | string} @go(WebhookProperties,map[string]*string)
}

#MonitorMetricAlertActionObservation: {
	// The ID of the Action Group can be sourced from the
	actionGroupId?: null | string @go(ActionGroupID,*string)

	// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
	webhookProperties?: {[string]: null | string} @go(WebhookProperties,map[string]*string)
}

#MonitorMetricAlertActionParameters: {
	// The ID of the Action Group can be sourced from the
	// +crossplane:generate:reference:type=MonitorActionGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	actionGroupId?: null | string @go(ActionGroupID,*string)

	// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
	// +kubebuilder:validation:Optional
	webhookProperties?: {[string]: null | string} @go(WebhookProperties,map[string]*string)
}

#MonitorMetricAlertCriteriaInitParameters: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	aggregation?: null | string @go(Aggregation,*string)

	// One or more dimension blocks as defined below.
	dimension?: [...#DimensionInitParameters] @go(Dimension,[]DimensionInitParameters)

	// One of the metric names to be monitored.
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are Equals, GreaterThan, GreaterThanOrEqual, LessThan and LessThanOrEqual.
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to false.
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)

	// The criteria threshold value that activates the alert.
	threshold?: null | float64 @go(Threshold,*float64)
}

#MonitorMetricAlertCriteriaObservation: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	aggregation?: null | string @go(Aggregation,*string)

	// One or more dimension blocks as defined below.
	dimension?: [...#DimensionObservation] @go(Dimension,[]DimensionObservation)

	// One of the metric names to be monitored.
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are Equals, GreaterThan, GreaterThanOrEqual, LessThan and LessThanOrEqual.
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to false.
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)

	// The criteria threshold value that activates the alert.
	threshold?: null | float64 @go(Threshold,*float64)
}

#MonitorMetricAlertCriteriaParameters: {
	// The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total.
	// +kubebuilder:validation:Optional
	aggregation?: null | string @go(Aggregation,*string)

	// One or more dimension blocks as defined below.
	// +kubebuilder:validation:Optional
	dimension?: [...#DimensionParameters] @go(Dimension,[]DimensionParameters)

	// One of the metric names to be monitored.
	// +kubebuilder:validation:Optional
	metricName?: null | string @go(MetricName,*string)

	// One of the metric namespaces to be monitored.
	// +kubebuilder:validation:Optional
	metricNamespace?: null | string @go(MetricNamespace,*string)

	// The criteria operator. Possible values are Equals, GreaterThan, GreaterThanOrEqual, LessThan and LessThanOrEqual.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to false.
	// +kubebuilder:validation:Optional
	skipMetricValidation?: null | bool @go(SkipMetricValidation,*bool)

	// The criteria threshold value that activates the alert.
	// +kubebuilder:validation:Optional
	threshold?: null | float64 @go(Threshold,*float64)
}

#MonitorMetricAlertInitParameters: {
	// One or more action blocks as defined below.
	action?: [...#MonitorMetricAlertActionInitParameters] @go(Action,[]MonitorMetricAlertActionInitParameters)

	// A application_insights_web_test_location_availability_criteria block as defined below.
	applicationInsightsWebTestLocationAvailabilityCriteria?: [...#ApplicationInsightsWebTestLocationAvailabilityCriteriaInitParameters] @go(ApplicationInsightsWebTestLocationAvailabilityCriteria,[]ApplicationInsightsWebTestLocationAvailabilityCriteriaInitParameters)

	// Should the alerts in this Metric Alert be auto resolved? Defaults to true.
	autoMitigate?: null | bool @go(AutoMitigate,*bool)

	// One or more (static) criteria blocks as defined below.
	criteria?: [...#MonitorMetricAlertCriteriaInitParameters] @go(Criteria,[]MonitorMetricAlertCriteriaInitParameters)

	// The description of this Metric Alert.
	description?: null | string @go(Description,*string)

	// A dynamic_criteria block as defined below.
	dynamicCriteria?: [...#DynamicCriteriaInitParameters] @go(DynamicCriteria,[]DynamicCriteriaInitParameters)

	// Should this Metric Alert be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.
	frequency?: null | string @go(Frequency,*string)

	// The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.
	severity?: null | float64 @go(Severity,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The location of the target resource.
	// The location of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	targetResourceLocation?: null | string @go(TargetResourceLocation,*string)

	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource.
	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	targetResourceType?: null | string @go(TargetResourceType,*string)

	// The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to PT5M.
	windowSize?: null | string @go(WindowSize,*string)
}

#MonitorMetricAlertObservation: {
	// One or more action blocks as defined below.
	action?: [...#MonitorMetricAlertActionObservation] @go(Action,[]MonitorMetricAlertActionObservation)

	// A application_insights_web_test_location_availability_criteria block as defined below.
	applicationInsightsWebTestLocationAvailabilityCriteria?: [...#ApplicationInsightsWebTestLocationAvailabilityCriteriaObservation] @go(ApplicationInsightsWebTestLocationAvailabilityCriteria,[]ApplicationInsightsWebTestLocationAvailabilityCriteriaObservation)

	// Should the alerts in this Metric Alert be auto resolved? Defaults to true.
	autoMitigate?: null | bool @go(AutoMitigate,*bool)

	// One or more (static) criteria blocks as defined below.
	criteria?: [...#MonitorMetricAlertCriteriaObservation] @go(Criteria,[]MonitorMetricAlertCriteriaObservation)

	// The description of this Metric Alert.
	description?: null | string @go(Description,*string)

	// A dynamic_criteria block as defined below.
	dynamicCriteria?: [...#DynamicCriteriaObservation] @go(DynamicCriteria,[]DynamicCriteriaObservation)

	// Should this Metric Alert be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.
	frequency?: null | string @go(Frequency,*string)

	// The ID of the metric alert.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A set of strings of resource IDs at which the metric criteria should be applied.
	scopes?: [...null | string] @go(Scopes,[]*string)

	// The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.
	severity?: null | float64 @go(Severity,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The location of the target resource.
	// The location of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	targetResourceLocation?: null | string @go(TargetResourceLocation,*string)

	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource.
	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	targetResourceType?: null | string @go(TargetResourceType,*string)

	// The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to PT5M.
	windowSize?: null | string @go(WindowSize,*string)
}

#MonitorMetricAlertParameters: {
	// One or more action blocks as defined below.
	// +kubebuilder:validation:Optional
	action?: [...#MonitorMetricAlertActionParameters] @go(Action,[]MonitorMetricAlertActionParameters)

	// A application_insights_web_test_location_availability_criteria block as defined below.
	// +kubebuilder:validation:Optional
	applicationInsightsWebTestLocationAvailabilityCriteria?: [...#ApplicationInsightsWebTestLocationAvailabilityCriteriaParameters] @go(ApplicationInsightsWebTestLocationAvailabilityCriteria,[]ApplicationInsightsWebTestLocationAvailabilityCriteriaParameters)

	// Should the alerts in this Metric Alert be auto resolved? Defaults to true.
	// +kubebuilder:validation:Optional
	autoMitigate?: null | bool @go(AutoMitigate,*bool)

	// One or more (static) criteria blocks as defined below.
	// +kubebuilder:validation:Optional
	criteria?: [...#MonitorMetricAlertCriteriaParameters] @go(Criteria,[]MonitorMetricAlertCriteriaParameters)

	// The description of this Metric Alert.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A dynamic_criteria block as defined below.
	// +kubebuilder:validation:Optional
	dynamicCriteria?: [...#DynamicCriteriaParameters] @go(DynamicCriteria,[]DynamicCriteriaParameters)

	// Should this Metric Alert be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.
	// +kubebuilder:validation:Optional
	frequency?: null | string @go(Frequency,*string)

	// The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A set of strings of resource IDs at which the metric criteria should be applied.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	scopes?: [...null | string] @go(Scopes,[]*string)

	// The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.
	// +kubebuilder:validation:Optional
	severity?: null | float64 @go(Severity,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The location of the target resource.
	// The location of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	// +kubebuilder:validation:Optional
	targetResourceLocation?: null | string @go(TargetResourceLocation,*string)

	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource.
	// The resource type (e.g. Microsoft.Compute/virtualMachines) of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes.
	// +kubebuilder:validation:Optional
	targetResourceType?: null | string @go(TargetResourceType,*string)

	// The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to PT5M.
	// +kubebuilder:validation:Optional
	windowSize?: null | string @go(WindowSize,*string)
}

// MonitorMetricAlertSpec defines the desired state of MonitorMetricAlert
#MonitorMetricAlertSpec: {
	forProvider: #MonitorMetricAlertParameters @go(ForProvider)

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
	initProvider?: #MonitorMetricAlertInitParameters @go(InitProvider)
}

// MonitorMetricAlertStatus defines the observed state of MonitorMetricAlert.
#MonitorMetricAlertStatus: {
	atProvider?: #MonitorMetricAlertObservation @go(AtProvider)
}

// MonitorMetricAlert is the Schema for the MonitorMetricAlerts API. Manages a Metric Alert within Azure Monitor
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorMetricAlert: {
	spec:    #MonitorMetricAlertSpec   @go(Spec)
	status?: #MonitorMetricAlertStatus @go(Status)
}

// MonitorMetricAlertList contains a list of MonitorMetricAlerts
#MonitorMetricAlertList: {
	items: [...#MonitorMetricAlert] @go(Items,[]MonitorMetricAlert)
}
