// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/sns/v1beta1

package v1beta1

// Tag represent a user-provided metadata that can be associated with a
// SNS Topic. For more information about tagging,
// see Tagging SNS Topics (https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html)
// in the SNS User Guide.
#Tag: {
	// The key name that can be used to look up or retrieve the associated value.
	// For example, Department or Cost Center are common choices.
	key: string @go(Key)

	// The value associated with this tag. For example, tags with a key name of
	// Department could have values such as Human Resources, Accounting, and Support.
	// Tags with a key name of Cost Center might have values that consist of the
	// number associated with the different cost centers in your company. Typically,
	// many resources have tags with the same key name but with different values.
	//
	// AWS always interprets the tag Value as a single string. If you need to store
	// an array, you can store comma-separated values in the string. However, you
	// must interpret the value in your code.
	// +optional
	value?: null | string @go(Value,*string)
}

// TopicParameters define the desired state of a AWS SNS Topic
#TopicParameters: {
	// Region is the region you'd like your Topic to be created in.
	region: string @go(Region)

	// Name refers to the name of the AWS SNS Topic
	// +immutable
	name: string @go(Name)

	// The display name to use for a topic with SNS subscriptions.
	// +optional
	displayName?: null | string @go(DisplayName,*string)

	// Setting this enables server side encryption at-rest to your topic.
	// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK
	//
	// For more examples, see KeyId (https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
	// in the AWS Key Management Service API Reference.
	// +optional
	kmsMasterKeyId?: null | string @go(KMSMasterKeyID,*string)

	// The policy that defines who can access your topic. By default,
	// only the topic owner can publish or subscribe to the topic.
	// +optional
	policy?: null | string @go(Policy,*string)

	// DeliveryRetryPolicy - the JSON serialization of the effective
	// delivery policy, taking system defaults into account
	// +optional
	deliveryPolicy?: null | string @go(DeliveryPolicy,*string)

	// Whether or not this should be a fifo-topic
	// +immutable
	// +optional
	fifoTopic?: null | bool @go(FifoTopic,*bool)

	// Tags represetnt a list of user-provided metadata that can be associated with a
	// SNS Topic. For more information about tagging,
	// see Tagging SNS Topics (https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html)
	// in the SNS User Guide.
	// +immutable
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)
}

// TopicSpec defined the desired state of a AWS SNS Topic
#TopicSpec: {
	forProvider: #TopicParameters @go(ForProvider)
}

// TopicObservation represents the observed state of a AWS SNS Topic
#TopicObservation: {
	// Owner refers to owner of SNS Topic
	// +optional
	owner?: null | string @go(Owner,*string)

	// ConfirmedSubscriptions - The no of confirmed subscriptions
	// +optional
	confirmedSubscriptions?: null | int64 @go(ConfirmedSubscriptions,*int64)

	// PendingSubscriptions - The no of pending subscriptions
	// +optional
	pendingSubscriptions?: null | int64 @go(PendingSubscriptions,*int64)

	// DeletedSubscriptions - The no of deleted subscriptions
	// +optional
	deletedSubscriptions?: null | int64 @go(DeletedSubscriptions,*int64)

	// ARN is the Amazon Resource Name (ARN) specifying the SNS Topic.
	arn: string @go(ARN)
}

// TopicStatus is the status of AWS SNS Topic
#TopicStatus: {
	atProvider?: #TopicObservation @go(AtProvider)
}

// Topic defines a managed resource that represents state of a AWS Topic
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="TOPIC-NAME",type="string",JSONPath=".spec.forProvider.name"
// +kubebuilder:printcolumn:name="DISPLAY-NAME",type="string",JSONPath=".spec.forProvider.displayName"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Topic: {
	spec:    #TopicSpec   @go(Spec)
	status?: #TopicStatus @go(Status)
}

// TopicList contains a list of Topic
#TopicList: {
	items: [...#Topic] @go(Items,[]Topic)
}
