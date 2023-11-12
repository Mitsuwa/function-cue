// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sns/v1beta1

package v1beta1

#TopicObservation: {
	// The ARN of the SNS topic, as a more obvious property (clone of id)
	arn?: null | string @go(Arn,*string)

	// The ARN of the SNS topic
	id?: null | string @go(ID,*string)

	// The AWS Account ID of the SNS topic owner
	owner?: null | string @go(Owner,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#TopicParameters: {
	// IAM role for failure feedback
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	applicationFailureFeedbackRoleArn?: null | string @go(ApplicationFailureFeedbackRoleArn,*string)

	// The IAM role permitted to receive success feedback for this topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	applicationSuccessFeedbackRoleArn?: null | string @go(ApplicationSuccessFeedbackRoleArn,*string)

	// Percentage of success to sample
	// +kubebuilder:validation:Optional
	applicationSuccessFeedbackSampleRate?: null | float64 @go(ApplicationSuccessFeedbackSampleRate,*float64)

	// Enables content-based deduplication for FIFO topics. For more information, see the related documentation
	// +kubebuilder:validation:Optional
	contentBasedDeduplication?: null | bool @go(ContentBasedDeduplication,*bool)

	// The SNS delivery policy. More on AWS documentation
	// +kubebuilder:validation:Optional
	deliveryPolicy?: null | string @go(DeliveryPolicy,*string)

	// The display name for the topic
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false).
	// +kubebuilder:validation:Optional
	fifoTopic?: null | bool @go(FifoTopic,*bool)

	// IAM role for failure feedback
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	firehoseFailureFeedbackRoleArn?: null | string @go(FirehoseFailureFeedbackRoleArn,*string)

	// The IAM role permitted to receive success feedback for this topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	firehoseSuccessFeedbackRoleArn?: null | string @go(FirehoseSuccessFeedbackRoleArn,*string)

	// Percentage of success to sample
	// +kubebuilder:validation:Optional
	firehoseSuccessFeedbackSampleRate?: null | float64 @go(FirehoseSuccessFeedbackSampleRate,*float64)

	// IAM role for failure feedback
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	httpFailureFeedbackRoleArn?: null | string @go(HTTPFailureFeedbackRoleArn,*string)

	// The IAM role permitted to receive success feedback for this topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	httpSuccessFeedbackRoleArn?: null | string @go(HTTPSuccessFeedbackRoleArn,*string)

	// Percentage of success to sample
	// +kubebuilder:validation:Optional
	httpSuccessFeedbackSampleRate?: null | float64 @go(HTTPSuccessFeedbackSampleRate,*float64)

	// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see Key Terms
	// +kubebuilder:validation:Optional
	kmsMasterKeyId?: null | string @go(KMSMasterKeyID,*string)

	// IAM role for failure feedback
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	lambdaFailureFeedbackRoleArn?: null | string @go(LambdaFailureFeedbackRoleArn,*string)

	// The IAM role permitted to receive success feedback for this topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	lambdaSuccessFeedbackRoleArn?: null | string @go(LambdaSuccessFeedbackRoleArn,*string)

	// Percentage of success to sample
	// +kubebuilder:validation:Optional
	lambdaSuccessFeedbackSampleRate?: null | float64 @go(LambdaSuccessFeedbackSampleRate,*float64)

	// The fully-formed AWS policy as JSON.
	// +kubebuilder:validation:Optional
	policy?: null | string @go(Policy,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// IAM role for failure feedback
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	sqsFailureFeedbackRoleArn?: null | string @go(SqsFailureFeedbackRoleArn,*string)

	// The IAM role permitted to receive success feedback for this topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	sqsSuccessFeedbackRoleArn?: null | string @go(SqsSuccessFeedbackRoleArn,*string)

	// Percentage of success to sample
	// +kubebuilder:validation:Optional
	sqsSuccessFeedbackSampleRate?: null | float64 @go(SqsSuccessFeedbackSampleRate,*float64)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// TopicSpec defines the desired state of Topic
#TopicSpec: {
	forProvider: #TopicParameters @go(ForProvider)
}

// TopicStatus defines the observed state of Topic.
#TopicStatus: {
	atProvider?: #TopicObservation @go(AtProvider)
}

// Topic is the Schema for the Topics API. Provides an SNS topic resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Topic: {
	spec:    #TopicSpec   @go(Spec)
	status?: #TopicStatus @go(Status)
}

// TopicList contains a list of Topics
#TopicList: {
	items: [...#Topic] @go(Items,[]Topic)
}
