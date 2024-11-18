// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#AutoscalingPolicyCPUUtilizationInitParameters: {
	// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:
	predictiveMethod?: null | string @go(PredictiveMethod,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyCPUUtilizationObservation: {
	// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:
	predictiveMethod?: null | string @go(PredictiveMethod,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyCPUUtilizationParameters: {
	// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:
	// +kubebuilder:validation:Optional
	predictiveMethod?: null | string @go(PredictiveMethod,*string)

	// URL of the managed instance group that this autoscaler will scale.
	// +kubebuilder:validation:Optional
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyLoadBalancingUtilizationInitParameters: {
	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyLoadBalancingUtilizationObservation: {
	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyLoadBalancingUtilizationParameters: {
	// URL of the managed instance group that this autoscaler will scale.
	// +kubebuilder:validation:Optional
	target?: null | float64 @go(Target,*float64)
}

#AutoscalingPolicyMetricInitParameters: {
	// The identifier for this object. Format specified above.
	name?: null | string @go(Name,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)

	// Defines how target utilization value is expressed for a
	// Stackdriver Monitoring metric.
	// Possible values are: GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE.
	type?: null | string @go(Type,*string)
}

#AutoscalingPolicyMetricObservation: {
	// The identifier for this object. Format specified above.
	name?: null | string @go(Name,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)

	// Defines how target utilization value is expressed for a
	// Stackdriver Monitoring metric.
	// Possible values are: GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE.
	type?: null | string @go(Type,*string)
}

#AutoscalingPolicyMetricParameters: {
	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// URL of the managed instance group that this autoscaler will scale.
	// +kubebuilder:validation:Optional
	target?: null | float64 @go(Target,*float64)

	// Defines how target utilization value is expressed for a
	// Stackdriver Monitoring metric.
	// Possible values are: GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#AutoscalingPolicyScaleInControlInitParameters: {
	// A nested object resource
	// Structure is documented below.
	maxScaledInReplicas?: [...#ScaleInControlMaxScaledInReplicasInitParameters] @go(MaxScaledInReplicas,[]ScaleInControlMaxScaledInReplicasInitParameters)

	// How long back autoscaling should look when computing recommendations
	// to include directives regarding slower scale down, as described above.
	timeWindowSec?: null | float64 @go(TimeWindowSec,*float64)
}

#AutoscalingPolicyScaleInControlObservation: {
	// A nested object resource
	// Structure is documented below.
	maxScaledInReplicas?: [...#ScaleInControlMaxScaledInReplicasObservation] @go(MaxScaledInReplicas,[]ScaleInControlMaxScaledInReplicasObservation)

	// How long back autoscaling should look when computing recommendations
	// to include directives regarding slower scale down, as described above.
	timeWindowSec?: null | float64 @go(TimeWindowSec,*float64)
}

#AutoscalingPolicyScaleInControlParameters: {
	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	maxScaledInReplicas?: [...#ScaleInControlMaxScaledInReplicasParameters] @go(MaxScaledInReplicas,[]ScaleInControlMaxScaledInReplicasParameters)

	// How long back autoscaling should look when computing recommendations
	// to include directives regarding slower scale down, as described above.
	// +kubebuilder:validation:Optional
	timeWindowSec?: null | float64 @go(TimeWindowSec,*float64)
}

#AutoscalingPolicyScalingSchedulesInitParameters: {
	// A description of a scaling schedule.
	description?: null | string @go(Description,*string)

	// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
	disabled?: null | bool @go(Disabled,*bool)

	// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
	durationSec?: null | float64 @go(DurationSec,*float64)

	// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
	minRequiredReplicas?: null | float64 @go(MinRequiredReplicas,*float64)

	// The identifier for this object. Format specified above.
	name?: null | string @go(Name,*string)

	// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
	schedule?: null | string @go(Schedule,*string)

	// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
	timeZone?: null | string @go(TimeZone,*string)
}

#AutoscalingPolicyScalingSchedulesObservation: {
	// A description of a scaling schedule.
	description?: null | string @go(Description,*string)

	// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
	disabled?: null | bool @go(Disabled,*bool)

	// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
	durationSec?: null | float64 @go(DurationSec,*float64)

	// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
	minRequiredReplicas?: null | float64 @go(MinRequiredReplicas,*float64)

	// The identifier for this object. Format specified above.
	name?: null | string @go(Name,*string)

	// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
	schedule?: null | string @go(Schedule,*string)

	// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
	timeZone?: null | string @go(TimeZone,*string)
}

#AutoscalingPolicyScalingSchedulesParameters: {
	// A description of a scaling schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
	// +kubebuilder:validation:Optional
	durationSec?: null | float64 @go(DurationSec,*float64)

	// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
	// +kubebuilder:validation:Optional
	minRequiredReplicas?: null | float64 @go(MinRequiredReplicas,*float64)

	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
	// +kubebuilder:validation:Optional
	schedule?: null | string @go(Schedule,*string)

	// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

#RegionAutoscalerAutoscalingPolicyInitParameters: {
	// Defines the CPU utilization policy that allows the autoscaler to
	// scale based on the average CPU utilization of a managed instance
	// group.
	// Structure is documented below.
	cpuUtilization?: [...#AutoscalingPolicyCPUUtilizationInitParameters] @go(CPUUtilization,[]AutoscalingPolicyCPUUtilizationInitParameters)

	// The number of seconds that the autoscaler should wait before it
	// starts collecting information from a new instance. This prevents
	// the autoscaler from collecting information when the instance is
	// initializing, during which the collected usage would not be
	// reliable. The default time autoscaler waits is 60 seconds.
	// Virtual machine initialization times might vary because of
	// numerous factors. We recommend that you test how long an
	// instance may take to initialize. To do this, create an instance
	// and time the startup process.
	cooldownPeriod?: null | float64 @go(CooldownPeriod,*float64)

	// Configuration parameters of autoscaling based on a load balancer.
	// Structure is documented below.
	loadBalancingUtilization?: [...#AutoscalingPolicyLoadBalancingUtilizationInitParameters] @go(LoadBalancingUtilization,[]AutoscalingPolicyLoadBalancingUtilizationInitParameters)

	// The maximum number of instances that the autoscaler can scale up
	// to. This is required when creating or updating an autoscaler. The
	// maximum number of replicas should not be lower than minimal number
	// of replicas.
	maxReplicas?: null | float64 @go(MaxReplicas,*float64)

	// Configuration parameters of autoscaling based on a custom metric.
	// Structure is documented below.
	metric?: [...#AutoscalingPolicyMetricInitParameters] @go(Metric,[]AutoscalingPolicyMetricInitParameters)

	// The minimum number of replicas that the autoscaler can scale down
	// to. This cannot be less than 0. If not provided, autoscaler will
	// choose a default value depending on maximum number of instances
	// allowed.
	minReplicas?: null | float64 @go(MinReplicas,*float64)

	// Defines operating mode for this policy.
	// Default value is ON.
	// Possible values are: OFF, ONLY_UP, ON.
	mode?: null | string @go(Mode,*string)

	// Defines scale in controls to reduce the risk of response latency
	// and outages due to abrupt scale-in events
	// Structure is documented below.
	scaleInControl?: [...#AutoscalingPolicyScaleInControlInitParameters] @go(ScaleInControl,[]AutoscalingPolicyScaleInControlInitParameters)

	// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
	// Structure is documented below.
	scalingSchedules?: [...#AutoscalingPolicyScalingSchedulesInitParameters] @go(ScalingSchedules,[]AutoscalingPolicyScalingSchedulesInitParameters)
}

#RegionAutoscalerAutoscalingPolicyObservation: {
	// Defines the CPU utilization policy that allows the autoscaler to
	// scale based on the average CPU utilization of a managed instance
	// group.
	// Structure is documented below.
	cpuUtilization?: [...#AutoscalingPolicyCPUUtilizationObservation] @go(CPUUtilization,[]AutoscalingPolicyCPUUtilizationObservation)

	// The number of seconds that the autoscaler should wait before it
	// starts collecting information from a new instance. This prevents
	// the autoscaler from collecting information when the instance is
	// initializing, during which the collected usage would not be
	// reliable. The default time autoscaler waits is 60 seconds.
	// Virtual machine initialization times might vary because of
	// numerous factors. We recommend that you test how long an
	// instance may take to initialize. To do this, create an instance
	// and time the startup process.
	cooldownPeriod?: null | float64 @go(CooldownPeriod,*float64)

	// Configuration parameters of autoscaling based on a load balancer.
	// Structure is documented below.
	loadBalancingUtilization?: [...#AutoscalingPolicyLoadBalancingUtilizationObservation] @go(LoadBalancingUtilization,[]AutoscalingPolicyLoadBalancingUtilizationObservation)

	// The maximum number of instances that the autoscaler can scale up
	// to. This is required when creating or updating an autoscaler. The
	// maximum number of replicas should not be lower than minimal number
	// of replicas.
	maxReplicas?: null | float64 @go(MaxReplicas,*float64)

	// Configuration parameters of autoscaling based on a custom metric.
	// Structure is documented below.
	metric?: [...#AutoscalingPolicyMetricObservation] @go(Metric,[]AutoscalingPolicyMetricObservation)

	// The minimum number of replicas that the autoscaler can scale down
	// to. This cannot be less than 0. If not provided, autoscaler will
	// choose a default value depending on maximum number of instances
	// allowed.
	minReplicas?: null | float64 @go(MinReplicas,*float64)

	// Defines operating mode for this policy.
	// Default value is ON.
	// Possible values are: OFF, ONLY_UP, ON.
	mode?: null | string @go(Mode,*string)

	// Defines scale in controls to reduce the risk of response latency
	// and outages due to abrupt scale-in events
	// Structure is documented below.
	scaleInControl?: [...#AutoscalingPolicyScaleInControlObservation] @go(ScaleInControl,[]AutoscalingPolicyScaleInControlObservation)

	// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
	// Structure is documented below.
	scalingSchedules?: [...#AutoscalingPolicyScalingSchedulesObservation] @go(ScalingSchedules,[]AutoscalingPolicyScalingSchedulesObservation)
}

#RegionAutoscalerAutoscalingPolicyParameters: {
	// Defines the CPU utilization policy that allows the autoscaler to
	// scale based on the average CPU utilization of a managed instance
	// group.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cpuUtilization?: [...#AutoscalingPolicyCPUUtilizationParameters] @go(CPUUtilization,[]AutoscalingPolicyCPUUtilizationParameters)

	// The number of seconds that the autoscaler should wait before it
	// starts collecting information from a new instance. This prevents
	// the autoscaler from collecting information when the instance is
	// initializing, during which the collected usage would not be
	// reliable. The default time autoscaler waits is 60 seconds.
	// Virtual machine initialization times might vary because of
	// numerous factors. We recommend that you test how long an
	// instance may take to initialize. To do this, create an instance
	// and time the startup process.
	// +kubebuilder:validation:Optional
	cooldownPeriod?: null | float64 @go(CooldownPeriod,*float64)

	// Configuration parameters of autoscaling based on a load balancer.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	loadBalancingUtilization?: [...#AutoscalingPolicyLoadBalancingUtilizationParameters] @go(LoadBalancingUtilization,[]AutoscalingPolicyLoadBalancingUtilizationParameters)

	// The maximum number of instances that the autoscaler can scale up
	// to. This is required when creating or updating an autoscaler. The
	// maximum number of replicas should not be lower than minimal number
	// of replicas.
	// +kubebuilder:validation:Optional
	maxReplicas?: null | float64 @go(MaxReplicas,*float64)

	// Configuration parameters of autoscaling based on a custom metric.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	metric?: [...#AutoscalingPolicyMetricParameters] @go(Metric,[]AutoscalingPolicyMetricParameters)

	// The minimum number of replicas that the autoscaler can scale down
	// to. This cannot be less than 0. If not provided, autoscaler will
	// choose a default value depending on maximum number of instances
	// allowed.
	// +kubebuilder:validation:Optional
	minReplicas?: null | float64 @go(MinReplicas,*float64)

	// Defines operating mode for this policy.
	// Default value is ON.
	// Possible values are: OFF, ONLY_UP, ON.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// Defines scale in controls to reduce the risk of response latency
	// and outages due to abrupt scale-in events
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	scaleInControl?: [...#AutoscalingPolicyScaleInControlParameters] @go(ScaleInControl,[]AutoscalingPolicyScaleInControlParameters)

	// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	scalingSchedules?: [...#AutoscalingPolicyScalingSchedulesParameters] @go(ScalingSchedules,[]AutoscalingPolicyScalingSchedulesParameters)
}

#RegionAutoscalerInitParameters: {
	// The configuration parameters for the autoscaling algorithm. You can
	// define one or more of the policies for an autoscaler: cpuUtilization,
	// customMetricUtilizations, and loadBalancingUtilization.
	// If none of these are specified, the default will be to autoscale based
	// on cpuUtilization to 0.6 or 60%.
	// Structure is documented below.
	autoscalingPolicy?: [...#RegionAutoscalerAutoscalingPolicyInitParameters] @go(AutoscalingPolicy,[]RegionAutoscalerAutoscalingPolicyInitParameters)

	// A description of a scaling schedule.
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#RegionAutoscalerObservation: {
	// The configuration parameters for the autoscaling algorithm. You can
	// define one or more of the policies for an autoscaler: cpuUtilization,
	// customMetricUtilizations, and loadBalancingUtilization.
	// If none of these are specified, the default will be to autoscale based
	// on cpuUtilization to 0.6 or 60%.
	// Structure is documented below.
	autoscalingPolicy?: [...#RegionAutoscalerAutoscalingPolicyObservation] @go(AutoscalingPolicy,[]RegionAutoscalerAutoscalingPolicyObservation)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// A description of a scaling schedule.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/autoscalers/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// URL of the region where the instance group resides.
	region?: null | string @go(Region,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | string @go(Target,*string)
}

#RegionAutoscalerParameters: {
	// The configuration parameters for the autoscaling algorithm. You can
	// define one or more of the policies for an autoscaler: cpuUtilization,
	// customMetricUtilizations, and loadBalancingUtilization.
	// If none of these are specified, the default will be to autoscale based
	// on cpuUtilization to 0.6 or 60%.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	autoscalingPolicy?: [...#RegionAutoscalerAutoscalingPolicyParameters] @go(AutoscalingPolicy,[]RegionAutoscalerAutoscalingPolicyParameters)

	// A description of a scaling schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// URL of the region where the instance group resides.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// URL of the managed instance group that this autoscaler will scale.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.RegionInstanceGroupManager
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	target?: null | string @go(Target,*string)
}

#ScaleInControlMaxScaledInReplicasInitParameters: {
	// Specifies a fixed number of VM instances. This must be a positive
	// integer.
	fixed?: null | float64 @go(Fixed,*float64)

	// Specifies a percentage of instances between 0 to 100%, inclusive.
	// For example, specify 80 for 80%.
	percent?: null | float64 @go(Percent,*float64)
}

#ScaleInControlMaxScaledInReplicasObservation: {
	// Specifies a fixed number of VM instances. This must be a positive
	// integer.
	fixed?: null | float64 @go(Fixed,*float64)

	// Specifies a percentage of instances between 0 to 100%, inclusive.
	// For example, specify 80 for 80%.
	percent?: null | float64 @go(Percent,*float64)
}

#ScaleInControlMaxScaledInReplicasParameters: {
	// Specifies a fixed number of VM instances. This must be a positive
	// integer.
	// +kubebuilder:validation:Optional
	fixed?: null | float64 @go(Fixed,*float64)

	// Specifies a percentage of instances between 0 to 100%, inclusive.
	// For example, specify 80 for 80%.
	// +kubebuilder:validation:Optional
	percent?: null | float64 @go(Percent,*float64)
}

// RegionAutoscalerSpec defines the desired state of RegionAutoscaler
#RegionAutoscalerSpec: {
	forProvider: #RegionAutoscalerParameters @go(ForProvider)

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
	initProvider?: #RegionAutoscalerInitParameters @go(InitProvider)
}

// RegionAutoscalerStatus defines the observed state of RegionAutoscaler.
#RegionAutoscalerStatus: {
	atProvider?: #RegionAutoscalerObservation @go(AtProvider)
}

// RegionAutoscaler is the Schema for the RegionAutoscalers API. Represents an Autoscaler resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionAutoscaler: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.autoscalingPolicy) || (has(self.initProvider) && has(self.initProvider.autoscalingPolicy))",message="spec.forProvider.autoscalingPolicy is a required parameter"
	spec:    #RegionAutoscalerSpec   @go(Spec)
	status?: #RegionAutoscalerStatus @go(Status)
}

// RegionAutoscalerList contains a list of RegionAutoscalers
#RegionAutoscalerList: {
	items: [...#RegionAutoscaler] @go(Items,[]RegionAutoscaler)
}
