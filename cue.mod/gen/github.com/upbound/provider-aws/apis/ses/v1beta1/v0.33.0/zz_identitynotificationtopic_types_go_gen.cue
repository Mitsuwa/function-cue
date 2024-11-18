// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ses/v1beta1

package v1beta1

#IdentityNotificationTopicObservation: {
	id?: null | string @go(ID,*string)
}

#IdentityNotificationTopicParameters: {
	// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ses/v1beta1.DomainIdentity
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("domain",false)
	// +kubebuilder:validation:Optional
	identity?: null | string @go(Identity,*string)

	// Whether SES should include original email headers in SNS notifications of this type. false by default.
	// +kubebuilder:validation:Optional
	includeOriginalHeaders?: null | bool @go(IncludeOriginalHeaders,*bool)

	// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: Bounce, Complaint or Delivery.
	// +kubebuilder:validation:Required
	notificationType?: null | string @go(NotificationType,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to "" (an empty string) to disable publishing.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	topicArn?: null | string @go(TopicArn,*string)
}

// IdentityNotificationTopicSpec defines the desired state of IdentityNotificationTopic
#IdentityNotificationTopicSpec: {
	forProvider: #IdentityNotificationTopicParameters @go(ForProvider)
}

// IdentityNotificationTopicStatus defines the observed state of IdentityNotificationTopic.
#IdentityNotificationTopicStatus: {
	atProvider?: #IdentityNotificationTopicObservation @go(AtProvider)
}

// IdentityNotificationTopic is the Schema for the IdentityNotificationTopics API. Setting AWS SES Identity Notification Topic
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#IdentityNotificationTopic: {
	spec:    #IdentityNotificationTopicSpec   @go(Spec)
	status?: #IdentityNotificationTopicStatus @go(Status)
}

// IdentityNotificationTopicList contains a list of IdentityNotificationTopics
#IdentityNotificationTopicList: {
	items: [...#IdentityNotificationTopic] @go(Items,[]IdentityNotificationTopic)
}
