// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/configservice/v1beta1

package v1beta1

#ExecutionControlsObservation: {
	// Configuration block for SSM controls. See below.
	ssmControls?: [...#SsmControlsObservation] @go(SsmControls,[]SsmControlsObservation)
}

#ExecutionControlsParameters: {
	// Configuration block for SSM controls. See below.
	// +kubebuilder:validation:Optional
	ssmControls?: [...#SsmControlsParameters] @go(SsmControls,[]SsmControlsParameters)
}

#ParameterObservation: {
	// Name of the attribute.
	name?: null | string @go(Name,*string)

	// Value is dynamic and changes at run-time.
	resourceValue?: null | string @go(ResourceValue,*string)

	// Value is static and does not change at run-time.
	staticValue?: null | string @go(StaticValue,*string)

	// List of static values.
	staticValues?: [...null | string] @go(StaticValues,[]*string)
}

#ParameterParameters: {
	// Name of the attribute.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Value is dynamic and changes at run-time.
	// +kubebuilder:validation:Optional
	resourceValue?: null | string @go(ResourceValue,*string)

	// Value is static and does not change at run-time.
	// +kubebuilder:validation:Optional
	staticValue?: null | string @go(StaticValue,*string)

	// List of static values.
	// +kubebuilder:validation:Optional
	staticValues?: [...null | string] @go(StaticValues,[]*string)
}

#RemediationConfigurationObservation: {
	// ARN of the Config Remediation Configuration.
	arn?: null | string @go(Arn,*string)

	// Remediation is triggered automatically if true.
	automatic?: null | bool @go(Automatic,*bool)

	// Configuration block for execution controls. See below.
	executionControls?: [...#ExecutionControlsObservation] @go(ExecutionControls,[]ExecutionControlsObservation)
	id?: null | string @go(ID,*string)

	// Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
	maximumAutomaticAttempts?: null | float64 @go(MaximumAutomaticAttempts,*float64)

	// Can be specified multiple times for each parameter. Each parameter block supports arguments below.
	parameter?: [...#ParameterObservation] @go(Parameter,[]ParameterObservation)

	// Type of resource.
	resourceType?: null | string @go(ResourceType,*string)

	// Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
	retryAttemptSeconds?: null | float64 @go(RetryAttemptSeconds,*float64)

	// Target ID is the name of the public document.
	targetId?: null | string @go(TargetID,*string)

	// Type of the target. Target executes remediation. For example, SSM document.
	targetType?: null | string @go(TargetType,*string)

	// Version of the target. For example, version of the SSM document
	targetVersion?: null | string @go(TargetVersion,*string)
}

#RemediationConfigurationParameters: {
	// Remediation is triggered automatically if true.
	// +kubebuilder:validation:Optional
	automatic?: null | bool @go(Automatic,*bool)

	// Configuration block for execution controls. See below.
	// +kubebuilder:validation:Optional
	executionControls?: [...#ExecutionControlsParameters] @go(ExecutionControls,[]ExecutionControlsParameters)

	// Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
	// +kubebuilder:validation:Optional
	maximumAutomaticAttempts?: null | float64 @go(MaximumAutomaticAttempts,*float64)

	// Can be specified multiple times for each parameter. Each parameter block supports arguments below.
	// +kubebuilder:validation:Optional
	parameter?: [...#ParameterParameters] @go(Parameter,[]ParameterParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Type of resource.
	// +kubebuilder:validation:Optional
	resourceType?: null | string @go(ResourceType,*string)

	// Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
	// +kubebuilder:validation:Optional
	retryAttemptSeconds?: null | float64 @go(RetryAttemptSeconds,*float64)

	// Target ID is the name of the public document.
	// +kubebuilder:validation:Optional
	targetId?: null | string @go(TargetID,*string)

	// Type of the target. Target executes remediation. For example, SSM document.
	// +kubebuilder:validation:Optional
	targetType?: null | string @go(TargetType,*string)

	// Version of the target. For example, version of the SSM document
	// +kubebuilder:validation:Optional
	targetVersion?: null | string @go(TargetVersion,*string)
}

#SsmControlsObservation: {
	// Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%.
	concurrentExecutionRatePercentage?: null | float64 @go(ConcurrentExecutionRatePercentage,*float64)

	// Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.
	errorPercentage?: null | float64 @go(ErrorPercentage,*float64)
}

#SsmControlsParameters: {
	// Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%.
	// +kubebuilder:validation:Optional
	concurrentExecutionRatePercentage?: null | float64 @go(ConcurrentExecutionRatePercentage,*float64)

	// Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.
	// +kubebuilder:validation:Optional
	errorPercentage?: null | float64 @go(ErrorPercentage,*float64)
}

// RemediationConfigurationSpec defines the desired state of RemediationConfiguration
#RemediationConfigurationSpec: {
	forProvider: #RemediationConfigurationParameters @go(ForProvider)
}

// RemediationConfigurationStatus defines the observed state of RemediationConfiguration.
#RemediationConfigurationStatus: {
	atProvider?: #RemediationConfigurationObservation @go(AtProvider)
}

// RemediationConfiguration is the Schema for the RemediationConfigurations API. Provides an AWS Config Remediation Configuration.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RemediationConfiguration: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.targetId)",message="targetId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.targetType)",message="targetType is a required parameter"
	spec:    #RemediationConfigurationSpec   @go(Spec)
	status?: #RemediationConfigurationStatus @go(Status)
}

// RemediationConfigurationList contains a list of RemediationConfigurations
#RemediationConfigurationList: {
	items: [...#RemediationConfiguration] @go(Items,[]RemediationConfiguration)
}
