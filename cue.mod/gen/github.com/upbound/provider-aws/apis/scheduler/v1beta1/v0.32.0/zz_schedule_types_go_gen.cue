// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/scheduler/v1beta1

package v1beta1

#CapacityProviderStrategyObservation: {
}

#CapacityProviderStrategyParameters: {
	// How many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Ranges from 0 (default) to 100000.
	// +kubebuilder:validation:Optional
	base?: null | float64 @go(Base,*float64)

	// Short name of the capacity provider.
	// +kubebuilder:validation:Required
	capacityProvider?: null | string @go(CapacityProvider,*string)

	// Designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Ranges from from 0 to 1000.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

#DeadLetterConfigObservation: {
}

#DeadLetterConfigParameters: {
	// ARN of the target of this schedule, such as a SQS queue or ECS cluster. For universal targets, this is a Service ARN specific to the target service.
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)
}

#EcsParametersObservation: {
}

#EcsParametersParameters: {
	// Up to 6 capacity provider strategies to use for the task. Detailed below.
	// +kubebuilder:validation:Optional
	capacityProviderStrategy?: [...#CapacityProviderStrategyParameters] @go(CapacityProviderStrategy,[]CapacityProviderStrategyParameters)

	// Specifies whether to enable Amazon ECS managed tags for the task. For more information, see Tagging Your Amazon ECS Resources in the Amazon ECS Developer Guide.
	// +kubebuilder:validation:Optional
	enableEcsManagedTags?: null | bool @go(EnableEcsManagedTags,*bool)

	// Specifies whether to enable the execute command functionality for the containers in this task.
	// +kubebuilder:validation:Optional
	enableExecuteCommand?: null | bool @go(EnableExecuteCommand,*bool)

	// Specifies an ECS task group for the task. At most 255 characters.
	// +kubebuilder:validation:Optional
	group?: null | string @go(Group,*string)

	// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. One of: EC2, FARGATE, EXTERNAL.
	// +kubebuilder:validation:Optional
	launchType?: null | string @go(LaunchType,*string)

	// Configures the networking associated with the task. Detailed below.
	// +kubebuilder:validation:Optional
	networkConfiguration?: [...#NetworkConfigurationParameters] @go(NetworkConfiguration,[]NetworkConfigurationParameters)

	// A set of up to 10 placement constraints to use for the task. Detailed below.
	// +kubebuilder:validation:Optional
	placementConstraints?: [...#PlacementConstraintsParameters] @go(PlacementConstraints,[]PlacementConstraintsParameters)

	// A set of up to 5 placement strategies. Detailed below.
	// +kubebuilder:validation:Optional
	placementStrategy?: [...#PlacementStrategyParameters] @go(PlacementStrategy,[]PlacementStrategyParameters)

	// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0.
	// +kubebuilder:validation:Optional
	platformVersion?: null | string @go(PlatformVersion,*string)

	// Specifies whether to propagate the tags from the task definition to the task. One of: TASK_DEFINITION.
	// +kubebuilder:validation:Optional
	propagateTags?: null | string @go(PropagateTags,*string)

	// Reference ID to use for the task.
	// +kubebuilder:validation:Optional
	referenceId?: null | string @go(ReferenceID,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The number of tasks to create. Ranges from 1 (default) to 10.
	// +kubebuilder:validation:Optional
	taskCount?: null | float64 @go(TaskCount,*float64)

	// ARN of the task definition to use.
	// +kubebuilder:validation:Required
	taskDefinitionArn?: null | string @go(TaskDefinitionArn,*string)
}

#EventbridgeParametersObservation: {
}

#EventbridgeParametersParameters: {
	// Free-form string used to decide what fields to expect in the event detail. Up to 128 characters.
	// +kubebuilder:validation:Required
	detailType?: null | string @go(DetailType,*string)

	// Source of the event.
	// +kubebuilder:validation:Required
	source?: null | string @go(Source,*string)
}

#FlexibleTimeWindowObservation: {
}

#FlexibleTimeWindowParameters: {
	// Maximum time window during which a schedule can be invoked. Ranges from 1 to 1440 minutes.
	// +kubebuilder:validation:Optional
	maximumWindowInMinutes?: null | float64 @go(MaximumWindowInMinutes,*float64)

	// Determines whether the schedule is invoked within a flexible time window. One of: OFF, FLEXIBLE.
	// +kubebuilder:validation:Required
	mode?: null | string @go(Mode,*string)
}

#KinesisParametersObservation: {
}

#KinesisParametersParameters: {
	// Specifies the shard to which EventBridge Scheduler sends the event. Up to 256 characters.
	// +kubebuilder:validation:Required
	partitionKey?: null | string @go(PartitionKey,*string)
}

#NetworkConfigurationObservation: {
}

#NetworkConfigurationParameters: {
	// Specifies whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when the launch_type is set to FARGATE. One of: ENABLED, DISABLED.
	// +kubebuilder:validation:Optional
	assignPublicIp?: null | bool @go(AssignPublicIP,*bool)

	// Set of 1 to 5 Security Group ID-s to be associated with the task. These security groups must all be in the same VPC.
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Set of 1 to 16 subnets to be associated with the task. These subnets must all be in the same VPC.
	// +kubebuilder:validation:Required
	subnets: [...null | string] @go(Subnets,[]*string)
}

#PipelineParameterObservation: {
}

#PipelineParameterParameters: {
	// Name of parameter to start execution of a SageMaker Model Building Pipeline.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Value of parameter to start execution of a SageMaker Model Building Pipeline.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#PlacementConstraintsObservation: {
}

#PlacementConstraintsParameters: {
	// A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. For more information, see Cluster query language in the Amazon ECS Developer Guide.
	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// The type of placement strategy. One of: random, spread, binpack.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#PlacementStrategyObservation: {
}

#PlacementStrategyParameters: {
	// The field to apply the placement strategy against.
	// +kubebuilder:validation:Optional
	field?: null | string @go(Field,*string)

	// The type of placement strategy. One of: random, spread, binpack.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#RetryPolicyObservation: {
}

#RetryPolicyParameters: {
	// Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from 60 to 86400 (default).
	// +kubebuilder:validation:Optional
	maximumEventAgeInSeconds?: null | float64 @go(MaximumEventAgeInSeconds,*float64)

	// Maximum number of retry attempts to make before the request fails. Ranges from 0 to 185 (default).
	// +kubebuilder:validation:Optional
	maximumRetryAttempts?: null | float64 @go(MaximumRetryAttempts,*float64)
}

#SagemakerPipelineParametersObservation: {
}

#SagemakerPipelineParametersParameters: {
	// Set of up to 200 parameter names and values to use when executing the SageMaker Model Building Pipeline. Detailed below.
	// +kubebuilder:validation:Optional
	pipelineParameter?: [...#PipelineParameterParameters] @go(PipelineParameter,[]PipelineParameterParameters)
}

#ScheduleObservation: {
	// ARN of the SQS queue specified as the destination for the dead-letter queue.
	arn?: null | string @go(Arn,*string)

	// Name of the schedule.
	id?: null | string @go(ID,*string)
}

#ScheduleParameters: {
	// Brief description of the schedule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: 2030-01-01T01:00:00Z.
	// +kubebuilder:validation:Optional
	endDate?: null | string @go(EndDate,*string)

	// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
	// +kubebuilder:validation:Required
	flexibleTimeWindow: [...#FlexibleTimeWindowParameters] @go(FlexibleTimeWindow,[]FlexibleTimeWindowParameters)

	// Name of the schedule group to associate with this schedule. When omitted, the default schedule group is used.
	// +kubebuilder:validation:Optional
	groupName?: null | string @go(GroupName,*string)

	// ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyArn?: null | string @go(KMSKeyArn,*string)

	// Name of the schedule. Conflicts with name_prefix.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Defines when the schedule runs. Read more in Schedule types on EventBridge Scheduler.
	// +kubebuilder:validation:Required
	scheduleExpression?: null | string @go(ScheduleExpression,*string)

	// Timezone in which the scheduling expression is evaluated. Defaults to UTC. Example: Australia/Sydney.
	// +kubebuilder:validation:Optional
	scheduleExpressionTimezone?: null | string @go(ScheduleExpressionTimezone,*string)

	// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: 2030-01-01T01:00:00Z.
	// +kubebuilder:validation:Optional
	startDate?: null | string @go(StartDate,*string)

	// Specifies whether the schedule is enabled or disabled. One of: ENABLED (default), DISABLED.
	// +kubebuilder:validation:Optional
	state?: null | string @go(State,*string)

	// Configures the target of the schedule. Detailed below.
	// +kubebuilder:validation:Required
	target: [...#TargetParameters] @go(Target,[]TargetParameters)
}

#SqsParametersObservation: {
}

#SqsParametersParameters: {
	// FIFO message group ID to use as the target.
	// +kubebuilder:validation:Optional
	messageGroupId?: null | string @go(MessageGroupID,*string)
}

#TargetObservation: {
}

#TargetParameters: {
	// ARN of the target of this schedule, such as a SQS queue or ECS cluster. For universal targets, this is a Service ARN specific to the target service.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)

	// Information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue. Detailed below.
	// +kubebuilder:validation:Optional
	deadLetterConfig?: [...#DeadLetterConfigParameters] @go(DeadLetterConfig,[]DeadLetterConfigParameters)

	// Templated target type for the Amazon ECS RunTask API operation. Detailed below.
	// +kubebuilder:validation:Optional
	ecsParameters?: [...#EcsParametersParameters] @go(EcsParameters,[]EcsParametersParameters)

	// Templated target type for the EventBridge PutEvents API operation. Detailed below.
	// +kubebuilder:validation:Optional
	eventbridgeParameters?: [...#EventbridgeParametersParameters] @go(EventbridgeParameters,[]EventbridgeParametersParameters)

	// Text, or well-formed JSON, passed to the target. Read more in Universal target.
	// +kubebuilder:validation:Optional
	input?: null | string @go(Input,*string)

	// Templated target type for the Amazon Kinesis PutRecord API operation. Detailed below.
	// +kubebuilder:validation:Optional
	kinesisParameters?: [...#KinesisParametersParameters] @go(KinesisParameters,[]KinesisParametersParameters)

	// Information about the retry policy settings. Detailed below.
	// +kubebuilder:validation:Optional
	retryPolicy?: [...#RetryPolicyParameters] @go(RetryPolicy,[]RetryPolicyParameters)

	// ARN of the IAM role that EventBridge Scheduler will use for this target when the schedule is invoked. Read more in Set up the execution role.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	roleArn?: null | string @go(RoleArn,*string)

	// Templated target type for the Amazon SageMaker StartPipelineExecution API operation. Detailed below.
	// +kubebuilder:validation:Optional
	sagemakerPipelineParameters?: [...#SagemakerPipelineParametersParameters] @go(SagemakerPipelineParameters,[]SagemakerPipelineParametersParameters)

	// The templated target type for the Amazon SQS SendMessage API operation. Detailed below.
	// +kubebuilder:validation:Optional
	sqsParameters?: [...#SqsParametersParameters] @go(SqsParameters,[]SqsParametersParameters)
}

// ScheduleSpec defines the desired state of Schedule
#ScheduleSpec: {
	forProvider: #ScheduleParameters @go(ForProvider)
}

// ScheduleStatus defines the observed state of Schedule.
#ScheduleStatus: {
	atProvider?: #ScheduleObservation @go(AtProvider)
}

// Schedule is the Schema for the Schedules API. Provides an EventBridge Scheduler Schedule resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Schedule: {
	spec:    #ScheduleSpec   @go(Spec)
	status?: #ScheduleStatus @go(Status)
}

// ScheduleList contains a list of Schedules
#ScheduleList: {
	items: [...#Schedule] @go(Items,[]Schedule)
}
