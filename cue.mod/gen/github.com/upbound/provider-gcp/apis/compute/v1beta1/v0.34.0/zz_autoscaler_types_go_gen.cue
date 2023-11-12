// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#AutoscalerObservation: {
	// The configuration parameters for the autoscaling algorithm. You can
	// define one or more of the policies for an autoscaler: cpuUtilization,
	// customMetricUtilizations, and loadBalancingUtilization.
	// If none of these are specified, the default will be to autoscale based
	// on cpuUtilization to 0.6 or 60%.
	// Structure is documented below.
	autoscalingPolicy?: [...#AutoscalingPolicyObservation] @go(AutoscalingPolicy,[]AutoscalingPolicyObservation)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// A description of a scaling schedule.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | string @go(Target,*string)

	// URL of the zone where the instance group resides.
	zone?: null | string @go(Zone,*string)
}

#AutoscalerParameters: {
	// The configuration parameters for the autoscaling algorithm. You can
	// define one or more of the policies for an autoscaler: cpuUtilization,
	// customMetricUtilizations, and loadBalancingUtilization.
	// If none of these are specified, the default will be to autoscale based
	// on cpuUtilization to 0.6 or 60%.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	autoscalingPolicy?: [...#AutoscalingPolicyParameters] @go(AutoscalingPolicy,[]AutoscalingPolicyParameters)

	// A description of a scaling schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// URL of the managed instance group that this autoscaler will scale.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.InstanceGroupManager
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	target?: null | string @go(Target,*string)

	// URL of the zone where the instance group resides.
	// +kubebuilder:validation:Required
	zone?: null | string @go(Zone,*string)
}

#AutoscalingPolicyObservation: {
	// Defines the CPU utilization policy that allows the autoscaler to
	// scale based on the average CPU utilization of a managed instance
	// group.
	// Structure is documented below.
	cpuUtilization?: [...#CPUUtilizationObservation] @go(CPUUtilization,[]CPUUtilizationObservation)

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
	loadBalancingUtilization?: [...#LoadBalancingUtilizationObservation] @go(LoadBalancingUtilization,[]LoadBalancingUtilizationObservation)

	// The maximum number of instances that the autoscaler can scale up
	// to. This is required when creating or updating an autoscaler. The
	// maximum number of replicas should not be lower than minimal number
	// of replicas.
	maxReplicas?: null | float64 @go(MaxReplicas,*float64)

	// Configuration parameters of autoscaling based on a custom metric.
	// Structure is documented below.
	metric?: [...#MetricObservation] @go(Metric,[]MetricObservation)

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
	scaleInControl?: [...#ScaleInControlObservation] @go(ScaleInControl,[]ScaleInControlObservation)

	// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
	// Structure is documented below.
	scalingSchedules?: [...#ScalingSchedulesObservation] @go(ScalingSchedules,[]ScalingSchedulesObservation)
}

#AutoscalingPolicyParameters: {
	// Defines the CPU utilization policy that allows the autoscaler to
	// scale based on the average CPU utilization of a managed instance
	// group.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cpuUtilization?: [...#CPUUtilizationParameters] @go(CPUUtilization,[]CPUUtilizationParameters)

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
	loadBalancingUtilization?: [...#LoadBalancingUtilizationParameters] @go(LoadBalancingUtilization,[]LoadBalancingUtilizationParameters)

	// The maximum number of instances that the autoscaler can scale up
	// to. This is required when creating or updating an autoscaler. The
	// maximum number of replicas should not be lower than minimal number
	// of replicas.
	// +kubebuilder:validation:Required
	maxReplicas?: null | float64 @go(MaxReplicas,*float64)

	// Configuration parameters of autoscaling based on a custom metric.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	metric?: [...#MetricParameters] @go(Metric,[]MetricParameters)

	// The minimum number of replicas that the autoscaler can scale down
	// to. This cannot be less than 0. If not provided, autoscaler will
	// choose a default value depending on maximum number of instances
	// allowed.
	// +kubebuilder:validation:Required
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
	scaleInControl?: [...#ScaleInControlParameters] @go(ScaleInControl,[]ScaleInControlParameters)

	// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	scalingSchedules?: [...#ScalingSchedulesParameters] @go(ScalingSchedules,[]ScalingSchedulesParameters)
}

#CPUUtilizationObservation: {
	// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:
	predictiveMethod?: null | string @go(PredictiveMethod,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#CPUUtilizationParameters: {
	// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:
	// +kubebuilder:validation:Optional
	predictiveMethod?: null | string @go(PredictiveMethod,*string)

	// URL of the managed instance group that this autoscaler will scale.
	// +kubebuilder:validation:Required
	target?: null | float64 @go(Target,*float64)
}

#LoadBalancingUtilizationObservation: {
	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)
}

#LoadBalancingUtilizationParameters: {
	// URL of the managed instance group that this autoscaler will scale.
	// +kubebuilder:validation:Required
	target?: null | float64 @go(Target,*float64)
}

#MaxScaledInReplicasObservation: {
	// Specifies a fixed number of VM instances. This must be a positive
	// integer.
	fixed?: null | float64 @go(Fixed,*float64)

	// Specifies a percentage of instances between 0 to 100%, inclusive.
	// For example, specify 80 for 80%.
	percent?: null | float64 @go(Percent,*float64)
}

#MaxScaledInReplicasParameters: {
	// Specifies a fixed number of VM instances. This must be a positive
	// integer.
	// +kubebuilder:validation:Optional
	fixed?: null | float64 @go(Fixed,*float64)

	// Specifies a percentage of instances between 0 to 100%, inclusive.
	// For example, specify 80 for 80%.
	// +kubebuilder:validation:Optional
	percent?: null | float64 @go(Percent,*float64)
}

#MetricObservation: {
	// The identifier for this object. Format specified above.
	name?: null | string @go(Name,*string)

	// URL of the managed instance group that this autoscaler will scale.
	target?: null | float64 @go(Target,*float64)

	// Defines how target utilization value is expressed for a
	// Stackdriver Monitoring metric.
	// Possible values are: GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE.
	type?: null | string @go(Type,*string)
}

#MetricParameters: {
	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Required
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

#ScaleInControlObservation: {
	// A nested object resource
	// Structure is documented below.
	maxScaledInReplicas?: [...#MaxScaledInReplicasObservation] @go(MaxScaledInReplicas,[]MaxScaledInReplicasObservation)

	// How long back autoscaling should look when computing recommendations
	// to include directives regarding slower scale down, as described above.
	timeWindowSec?: null | float64 @go(TimeWindowSec,*float64)
}

#ScaleInControlParameters: {
	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	maxScaledInReplicas?: [...#MaxScaledInReplicasParameters] @go(MaxScaledInReplicas,[]MaxScaledInReplicasParameters)

	// How long back autoscaling should look when computing recommendations
	// to include directives regarding slower scale down, as described above.
	// +kubebuilder:validation:Optional
	timeWindowSec?: null | float64 @go(TimeWindowSec,*float64)
}

#ScalingSchedulesObservation: {
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

#ScalingSchedulesParameters: {
	// A description of a scaling schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
	// +kubebuilder:validation:Required
	durationSec?: null | float64 @go(DurationSec,*float64)

	// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
	// +kubebuilder:validation:Required
	minRequiredReplicas?: null | float64 @go(MinRequiredReplicas,*float64)

	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
	// +kubebuilder:validation:Required
	schedule?: null | string @go(Schedule,*string)

	// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

// AutoscalerSpec defines the desired state of Autoscaler
#AutoscalerSpec: {
	forProvider: #AutoscalerParameters @go(ForProvider)
}

// AutoscalerStatus defines the observed state of Autoscaler.
#AutoscalerStatus: {
	atProvider?: #AutoscalerObservation @go(AtProvider)
}

// Autoscaler is the Schema for the Autoscalers API. Represents an Autoscaler resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Autoscaler: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.autoscalingPolicy)",message="autoscalingPolicy is a required parameter"
	spec:    #AutoscalerSpec   @go(Spec)
	status?: #AutoscalerStatus @go(Status)
}

// AutoscalerList contains a list of Autoscalers
#AutoscalerList: {
	items: [...#Autoscaler] @go(Items,[]Autoscaler)
}
