// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ssm/v1beta1

package v1beta1

#AutomationParametersObservation: {
}

#AutomationParametersParameterObservation: {
}

#AutomationParametersParameterParameters: {
	// The name of the maintenance window task.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The array of strings.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#AutomationParametersParameters: {
	// The version of an Automation document to use during task execution.
	// +kubebuilder:validation:Optional
	documentVersion?: null | string @go(DocumentVersion,*string)

	// The parameters for the RUN_COMMAND task execution. Documented below.
	// +kubebuilder:validation:Optional
	parameter?: [...#AutomationParametersParameterParameters] @go(Parameter,[]AutomationParametersParameterParameters)
}

#CloudwatchConfigObservation: {
}

#CloudwatchConfigParameters: {
	// The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName.
	// +kubebuilder:validation:Optional
	cloudwatchLogGroupName?: null | string @go(CloudwatchLogGroupName,*string)

	// Enables Systems Manager to send command output to CloudWatch Logs.
	// +kubebuilder:validation:Optional
	cloudwatchOutputEnabled?: null | bool @go(CloudwatchOutputEnabled,*bool)
}

#LambdaParametersObservation: {
}

#LambdaParametersParameters: {
	// Pass client-specific information to the Lambda function that you are invoking.
	// +kubebuilder:validation:Optional
	clientContext?: null | string @go(ClientContext,*string)

	// Specify a Lambda function version or alias name.
	// +kubebuilder:validation:Optional
	qualifier?: null | string @go(Qualifier,*string)
}

#MaintenanceWindowTaskObservation: {
	// The ARN of the maintenance window task.
	arn?: null | string @go(Arn,*string)

	// The ID of the maintenance window task.
	id?: null | string @go(ID,*string)

	// The ID of the maintenance window task.
	windowTaskId?: null | string @go(WindowTaskID,*string)
}

#MaintenanceWindowTaskParameters: {
	// Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are CONTINUE_TASK and CANCEL_TASK.
	// +kubebuilder:validation:Optional
	cutoffBehavior?: null | string @go(CutoffBehavior,*string)

	// The description of the maintenance window task.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The maximum number of targets this task can be run for in parallel.
	// +kubebuilder:validation:Optional
	maxConcurrency?: null | string @go(MaxConcurrency,*string)

	// The maximum number of errors allowed before this task stops being scheduled.
	// +kubebuilder:validation:Optional
	maxErrors?: null | string @go(MaxErrors,*string)

	// The name of the maintenance window task.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	serviceRoleArn?: null | string @go(ServiceRoleArn,*string)

	// The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
	// +kubebuilder:validation:Optional
	targets?: [...#MaintenanceWindowTaskTargetsParameters] @go(Targets,[]MaintenanceWindowTaskTargetsParameters)

	// The ARN of the task to execute.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/lambda/v1beta1.Function
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	taskArn?: null | string @go(TaskArn,*string)

	// Configuration block with parameters for task execution.
	// +kubebuilder:validation:Optional
	taskInvocationParameters?: [...#TaskInvocationParametersParameters] @go(TaskInvocationParameters,[]TaskInvocationParametersParameters)

	// The type of task being registered. Valid values: AUTOMATION, LAMBDA, RUN_COMMAND or STEP_FUNCTIONS.
	// +kubebuilder:validation:Required
	taskType?: null | string @go(TaskType,*string)

	// The Id of the maintenance window to register the task with.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ssm/v1beta1.MaintenanceWindow
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	windowId?: null | string @go(WindowID,*string)
}

#MaintenanceWindowTaskTargetsObservation: {
}

#MaintenanceWindowTaskTargetsParameters: {
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The array of strings.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#NotificationConfigObservation: {
}

#NotificationConfigParameters: {
	// An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	notificationArn?: null | string @go(NotificationArn,*string)

	// The different events for which you can receive notifications. Valid values: All, InProgress, Success, TimedOut, Cancelled, and Failed
	// +kubebuilder:validation:Optional
	notificationEvents?: [...null | string] @go(NotificationEvents,[]*string)

	// When specified with Command, receive notification when the status of a command changes. When specified with Invocation, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: Command and Invocation
	// +kubebuilder:validation:Optional
	notificationType?: null | string @go(NotificationType,*string)
}

#RunCommandParametersObservation: {
}

#RunCommandParametersParameterObservation: {
}

#RunCommandParametersParameterParameters: {
	// The name of the maintenance window task.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The array of strings.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#RunCommandParametersParameters: {
	// Configuration options for sending command output to CloudWatch Logs. Documented below.
	// +kubebuilder:validation:Optional
	cloudwatchConfig?: [...#CloudwatchConfigParameters] @go(CloudwatchConfig,[]CloudwatchConfigParameters)

	// Information about the command(s) to execute.
	// +kubebuilder:validation:Optional
	comment?: null | string @go(Comment,*string)

	// The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.
	// +kubebuilder:validation:Optional
	documentHash?: null | string @go(DocumentHash,*string)

	// SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: Sha256 and Sha1
	// +kubebuilder:validation:Optional
	documentHashType?: null | string @go(DocumentHashType,*string)

	// The version of an Automation document to use during task execution.
	// +kubebuilder:validation:Optional
	documentVersion?: null | string @go(DocumentVersion,*string)

	// Configurations for sending notifications about command status changes on a per-instance basis. Documented below.
	// +kubebuilder:validation:Optional
	notificationConfig?: [...#NotificationConfigParameters] @go(NotificationConfig,[]NotificationConfigParameters)

	// The name of the Amazon S3 bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	outputS3Bucket?: null | string @go(OutputS3Bucket,*string)

	// The Amazon S3 bucket subfolder.
	// +kubebuilder:validation:Optional
	outputS3KeyPrefix?: null | string @go(OutputS3KeyPrefix,*string)

	// The parameters for the RUN_COMMAND task execution. Documented below.
	// +kubebuilder:validation:Optional
	parameter?: [...#RunCommandParametersParameterParameters] @go(Parameter,[]RunCommandParametersParameterParameters)

	// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	serviceRoleArn?: null | string @go(ServiceRoleArn,*string)

	// If this time is reached and the command has not already started executing, it doesn't run.
	// +kubebuilder:validation:Optional
	timeoutSeconds?: null | float64 @go(TimeoutSeconds,*float64)
}

#StepFunctionsParametersObservation: {
}

#StepFunctionsParametersParameters: {
	// The name of the maintenance window task.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#TaskInvocationParametersObservation: {
}

#TaskInvocationParametersParameters: {
	// The parameters for an AUTOMATION task type. Documented below.
	// +kubebuilder:validation:Optional
	automationParameters?: [...#AutomationParametersParameters] @go(AutomationParameters,[]AutomationParametersParameters)

	// The parameters for a LAMBDA task type. Documented below.
	// +kubebuilder:validation:Optional
	lambdaParameters?: [...#LambdaParametersParameters] @go(LambdaParameters,[]LambdaParametersParameters)

	// The parameters for a RUN_COMMAND task type. Documented below.
	// +kubebuilder:validation:Optional
	runCommandParameters?: [...#RunCommandParametersParameters] @go(RunCommandParameters,[]RunCommandParametersParameters)

	// The parameters for a STEP_FUNCTIONS task type. Documented below.
	// +kubebuilder:validation:Optional
	stepFunctionsParameters?: [...#StepFunctionsParametersParameters] @go(StepFunctionsParameters,[]StepFunctionsParametersParameters)
}

// MaintenanceWindowTaskSpec defines the desired state of MaintenanceWindowTask
#MaintenanceWindowTaskSpec: {
	forProvider: #MaintenanceWindowTaskParameters @go(ForProvider)
}

// MaintenanceWindowTaskStatus defines the observed state of MaintenanceWindowTask.
#MaintenanceWindowTaskStatus: {
	atProvider?: #MaintenanceWindowTaskObservation @go(AtProvider)
}

// MaintenanceWindowTask is the Schema for the MaintenanceWindowTasks API. Provides an SSM Maintenance Window Task resource
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#MaintenanceWindowTask: {
	spec:    #MaintenanceWindowTaskSpec   @go(Spec)
	status?: #MaintenanceWindowTaskStatus @go(Status)
}

// MaintenanceWindowTaskList contains a list of MaintenanceWindowTasks
#MaintenanceWindowTaskList: {
	items: [...#MaintenanceWindowTask] @go(Items,[]MaintenanceWindowTask)
}
