// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3/v1beta1

package v1beta1

#BucketNotificationObservation: {
	// Unique identifier for each of the notification configurations.
	id?: null | string @go(ID,*string)
}

#BucketNotificationParameters: {
	// Name of the bucket for notification configuration.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Whether to enable Amazon EventBridge notifications.
	// +kubebuilder:validation:Optional
	eventbridge?: null | bool @go(Eventbridge,*bool)

	// Used to configure notifications to a Lambda Function. See below.
	// +kubebuilder:validation:Optional
	lambdaFunction?: [...#LambdaFunctionParameters] @go(LambdaFunction,[]LambdaFunctionParameters)

	// Notification configuration to SQS Queue. See below.
	// +kubebuilder:validation:Optional
	queue?: [...#QueueParameters] @go(Queue,[]QueueParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Notification configuration to SNS Topic. See below.
	// +kubebuilder:validation:Optional
	topic?: [...#TopicParameters] @go(Topic,[]TopicParameters)
}

#LambdaFunctionObservation: {
}

#LambdaFunctionParameters: {
	// Event for which to send notifications.
	// +kubebuilder:validation:Required
	events: [...null | string] @go(Events,[]*string)

	// Object key name prefix.
	// +kubebuilder:validation:Optional
	filterPrefix?: null | string @go(FilterPrefix,*string)

	// Object key name suffix.
	// +kubebuilder:validation:Optional
	filterSuffix?: null | string @go(FilterSuffix,*string)

	// Unique identifier for each of the notification configurations.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Lambda function ARN.
	// +kubebuilder:validation:Optional
	lambdaFunctionArn?: null | string @go(LambdaFunctionArn,*string)
}

#QueueObservation: {
}

#QueueParameters: {
	// Specifies event for which to send notifications.
	// +kubebuilder:validation:Required
	events: [...null | string] @go(Events,[]*string)

	// Object key name prefix.
	// +kubebuilder:validation:Optional
	filterPrefix?: null | string @go(FilterPrefix,*string)

	// Object key name suffix.
	// +kubebuilder:validation:Optional
	filterSuffix?: null | string @go(FilterSuffix,*string)

	// Unique identifier for each of the notification configurations.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// SQS queue ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	queueArn?: null | string @go(QueueArn,*string)
}

#TopicObservation: {
}

#TopicParameters: {
	// Event for which to send notifications.
	// +kubebuilder:validation:Required
	events: [...null | string] @go(Events,[]*string)

	// Object key name prefix.
	// +kubebuilder:validation:Optional
	filterPrefix?: null | string @go(FilterPrefix,*string)

	// Object key name suffix.
	// +kubebuilder:validation:Optional
	filterSuffix?: null | string @go(FilterSuffix,*string)

	// Unique identifier for each of the notification configurations.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// SNS topic ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	topicArn?: null | string @go(TopicArn,*string)
}

// BucketNotificationSpec defines the desired state of BucketNotification
#BucketNotificationSpec: {
	forProvider: #BucketNotificationParameters @go(ForProvider)
}

// BucketNotificationStatus defines the observed state of BucketNotification.
#BucketNotificationStatus: {
	atProvider?: #BucketNotificationObservation @go(AtProvider)
}

// BucketNotification is the Schema for the BucketNotifications API. Manages a S3 Bucket Notification Configuration
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BucketNotification: {
	spec:    #BucketNotificationSpec   @go(Spec)
	status?: #BucketNotificationStatus @go(Status)
}

// BucketNotificationList contains a list of BucketNotifications
#BucketNotificationList: {
	items: [...#BucketNotification] @go(Items,[]BucketNotification)
}
