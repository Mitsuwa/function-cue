// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/appautoscaling/v1beta1

package v1beta1

#CustomizedMetricSpecificationObservation: {
}

#CustomizedMetricSpecificationParameters: {
	// Configuration block(s) with the dimensions of the metric if the metric was published with dimensions. Detailed below.
	// +kubebuilder:validation:Optional
	dimensions?: [...#DimensionsParameters] @go(Dimensions,[]DimensionsParameters)

	// Name of the metric.
	// +kubebuilder:validation:Required
	metricName?: null | string @go(MetricName,*string)

	// Namespace of the metric.
	// +kubebuilder:validation:Required
	namespace?: null | string @go(Namespace,*string)

	// Statistic of the metric. Valid values: Average, Minimum, Maximum, SampleCount, and Sum.
	// +kubebuilder:validation:Required
	statistic?: null | string @go(Statistic,*string)

	// Unit of the metric.
	// +kubebuilder:validation:Optional
	unit?: null | string @go(Unit,*string)
}

#DimensionsObservation: {
}

#DimensionsParameters: {
	// Name of the dimension.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Value of the dimension.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#PolicyObservation: {
	// List of CloudWatch alarm ARNs associated with the scaling policy.
	alarmArns?: [...null | string] @go(AlarmArns,[]*string)

	// ARN assigned by AWS to the scaling policy.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)
}

#PolicyParameters: {
	// Policy type. Valid values are StepScaling and TargetTrackingScaling. Defaults to StepScaling. Certain services only support only one policy type. For more information see the Target Tracking Scaling Policies and Step Scaling Policies documentation.
	// +kubebuilder:validation:Optional
	policyType?: null | string @go(PolicyType,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the ResourceId parameter at: AWS Application Auto Scaling API Reference
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appautoscaling/v1beta1.Target
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("resource_id",false)
	// +kubebuilder:validation:Optional
	resourceId?: null | string @go(ResourceID,*string)

	// Scalable dimension of the scalable target. Documentation can be found in the ScalableDimension parameter at: AWS Application Auto Scaling API Reference
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appautoscaling/v1beta1.Target
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("scalable_dimension",false)
	// +kubebuilder:validation:Optional
	scalableDimension?: null | string @go(ScalableDimension,*string)

	// AWS service namespace of the scalable target. Documentation can be found in the ServiceNamespace parameter at: AWS Application Auto Scaling API Reference
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/appautoscaling/v1beta1.Target
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("service_namespace",false)
	// +kubebuilder:validation:Optional
	serviceNamespace?: null | string @go(ServiceNamespace,*string)

	// Step scaling policy configuration, requires policy_type = "StepScaling" (default). See supported fields below.
	// +kubebuilder:validation:Optional
	stepScalingPolicyConfiguration?: [...#StepScalingPolicyConfigurationParameters] @go(StepScalingPolicyConfiguration,[]StepScalingPolicyConfigurationParameters)

	// Target tracking policy, requires policy_type = "TargetTrackingScaling". See supported fields below.
	// +kubebuilder:validation:Optional
	targetTrackingScalingPolicyConfiguration?: [...#TargetTrackingScalingPolicyConfigurationParameters] @go(TargetTrackingScalingPolicyConfiguration,[]TargetTrackingScalingPolicyConfigurationParameters)
}

#PredefinedMetricSpecificationObservation: {
}

#PredefinedMetricSpecificationParameters: {
	// Metric type.
	// +kubebuilder:validation:Required
	predefinedMetricType?: null | string @go(PredefinedMetricType,*string)

	// Reserved for future use if the predefined_metric_type is not ALBRequestCountPerTarget. If the predefined_metric_type is ALBRequestCountPerTarget, you must specify this argument. Documentation can be found at: AWS Predefined Scaling Metric Specification. Must be less than or equal to 1023 characters in length.
	// +kubebuilder:validation:Optional
	resourceLabel?: null | string @go(ResourceLabel,*string)
}

#StepAdjustmentObservation: {
}

#StepAdjustmentParameters: {
	// Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as negative infinity.
	// +kubebuilder:validation:Optional
	metricIntervalLowerBound?: null | string @go(MetricIntervalLowerBound,*string)

	// Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as infinity. The upper bound must be greater than the lower bound.
	// +kubebuilder:validation:Optional
	metricIntervalUpperBound?: null | string @go(MetricIntervalUpperBound,*string)

	// Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.
	// +kubebuilder:validation:Required
	scalingAdjustment?: null | float64 @go(ScalingAdjustment,*float64)
}

#StepScalingPolicyConfigurationObservation: {
}

#StepScalingPolicyConfigurationParameters: {
	// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity.
	// +kubebuilder:validation:Optional
	adjustmentType?: null | string @go(AdjustmentType,*string)

	// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
	// +kubebuilder:validation:Optional
	cooldown?: null | float64 @go(Cooldown,*float64)

	// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
	// +kubebuilder:validation:Optional
	metricAggregationType?: null | string @go(MetricAggregationType,*string)

	// Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount.
	// +kubebuilder:validation:Optional
	minAdjustmentMagnitude?: null | float64 @go(MinAdjustmentMagnitude,*float64)

	// Set of adjustments that manage scaling. These have the following structure:
	// +kubebuilder:validation:Optional
	stepAdjustment?: [...#StepAdjustmentParameters] @go(StepAdjustment,[]StepAdjustmentParameters)
}

#TargetTrackingScalingPolicyConfigurationObservation: {
}

#TargetTrackingScalingPolicyConfigurationParameters: {
	// Custom CloudWatch metric. Documentation can be found  at: AWS Customized Metric Specification. See supported fields below.
	// +kubebuilder:validation:Optional
	customizedMetricSpecification?: [...#CustomizedMetricSpecificationParameters] @go(CustomizedMetricSpecification,[]CustomizedMetricSpecificationParameters)

	// Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.
	// +kubebuilder:validation:Optional
	disableScaleIn?: null | bool @go(DisableScaleIn,*bool)

	// Predefined metric. See supported fields below.
	// +kubebuilder:validation:Optional
	predefinedMetricSpecification?: [...#PredefinedMetricSpecificationParameters] @go(PredefinedMetricSpecification,[]PredefinedMetricSpecificationParameters)

	// Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
	// +kubebuilder:validation:Optional
	scaleInCooldown?: null | float64 @go(ScaleInCooldown,*float64)

	// Amount of time, in seconds, after a scale out activity completes before another scale out activity can start.
	// +kubebuilder:validation:Optional
	scaleOutCooldown?: null | float64 @go(ScaleOutCooldown,*float64)

	// Target value for the metric.
	// +kubebuilder:validation:Required
	targetValue?: null | float64 @go(TargetValue,*float64)
}

// PolicySpec defines the desired state of Policy
#PolicySpec: {
	forProvider: #PolicyParameters @go(ForProvider)
}

// PolicyStatus defines the observed state of Policy.
#PolicyStatus: {
	atProvider?: #PolicyObservation @go(AtProvider)
}

// Policy is the Schema for the Policys API. Provides an Application AutoScaling Policy resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Policy: {
	spec:    #PolicySpec   @go(Spec)
	status?: #PolicyStatus @go(Status)
}

// PolicyList contains a list of Policys
#PolicyList: {
	items: [...#Policy] @go(Items,[]Policy)
}
