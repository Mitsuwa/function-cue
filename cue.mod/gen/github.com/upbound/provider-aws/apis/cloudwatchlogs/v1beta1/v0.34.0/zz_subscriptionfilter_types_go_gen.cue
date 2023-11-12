// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cloudwatchlogs/v1beta1

package v1beta1

#SubscriptionFilterObservation: {
	// The ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
	destinationArn?: null | string @go(DestinationArn,*string)

	// The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
	distribution?: null | string @go(Distribution,*string)

	// A valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string "" to match everything. For more information, see the Amazon CloudWatch Logs User Guide.
	filterPattern?: null | string @go(FilterPattern,*string)
	id?:            null | string @go(ID,*string)

	// The name of the log group to associate the subscription filter with
	logGroupName?: null | string @go(LogGroupName,*string)

	// A name for the subscription filter
	name?: null | string @go(Name,*string)

	// The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to deliver ingested log events to the destination. If you use Lambda as a destination, you should skip this argument and use aws_lambda_permission resource for granting access from CloudWatch logs to the destination Lambda function.
	roleArn?: null | string @go(RoleArn,*string)
}

#SubscriptionFilterParameters: {
	// The ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kinesis/v1beta1.Stream
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.TerraformID()
	// +kubebuilder:validation:Optional
	destinationArn?: null | string @go(DestinationArn,*string)

	// The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
	// +kubebuilder:validation:Optional
	distribution?: null | string @go(Distribution,*string)

	// A valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string "" to match everything. For more information, see the Amazon CloudWatch Logs User Guide.
	// +kubebuilder:validation:Optional
	filterPattern?: null | string @go(FilterPattern,*string)

	// The name of the log group to associate the subscription filter with
	// +kubebuilder:validation:Optional
	logGroupName?: null | string @go(LogGroupName,*string)

	// A name for the subscription filter
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to deliver ingested log events to the destination. If you use Lambda as a destination, you should skip this argument and use aws_lambda_permission resource for granting access from CloudWatch logs to the destination Lambda function.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	roleArn?: null | string @go(RoleArn,*string)
}

// SubscriptionFilterSpec defines the desired state of SubscriptionFilter
#SubscriptionFilterSpec: {
	forProvider: #SubscriptionFilterParameters @go(ForProvider)
}

// SubscriptionFilterStatus defines the observed state of SubscriptionFilter.
#SubscriptionFilterStatus: {
	atProvider?: #SubscriptionFilterObservation @go(AtProvider)
}

// SubscriptionFilter is the Schema for the SubscriptionFilters API. Provides a CloudWatch Logs subscription filter.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SubscriptionFilter: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.filterPattern)",message="filterPattern is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.logGroupName)",message="logGroupName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #SubscriptionFilterSpec   @go(Spec)
	status?: #SubscriptionFilterStatus @go(Status)
}

// SubscriptionFilterList contains a list of SubscriptionFilters
#SubscriptionFilterList: {
	items: [...#SubscriptionFilter] @go(Items,[]SubscriptionFilter)
}
