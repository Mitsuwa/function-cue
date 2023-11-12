// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/inspector/v1beta1

package v1beta1

#AssessmentTemplateObservation: {
	// The template assessment ARN.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#AssessmentTemplateParameters: {
	// The duration of the inspector run.
	// +kubebuilder:validation:Required
	duration?: null | float64 @go(Duration,*float64)

	// A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
	// +kubebuilder:validation:Optional
	eventSubscription?: [...#EventSubscriptionParameters] @go(EventSubscription,[]EventSubscriptionParameters)

	// The name of the assessment template.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The rules to be used during the run.
	// +kubebuilder:validation:Required
	rulesPackageArns: [...null | string] @go(RulesPackageArns,[]*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The assessment target ARN to attach the template to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/inspector/v1beta1.AssessmentTarget
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	targetArn?: null | string @go(TargetArn,*string)
}

#EventSubscriptionObservation: {
}

#EventSubscriptionParameters: {
	// The event for which you want to receive SNS notifications. Valid values are ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, and FINDING_REPORTED.
	// +kubebuilder:validation:Required
	event?: null | string @go(Event,*string)

	// The ARN of the SNS topic to which notifications are sent.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	topicArn?: null | string @go(TopicArn,*string)
}

// AssessmentTemplateSpec defines the desired state of AssessmentTemplate
#AssessmentTemplateSpec: {
	forProvider: #AssessmentTemplateParameters @go(ForProvider)
}

// AssessmentTemplateStatus defines the observed state of AssessmentTemplate.
#AssessmentTemplateStatus: {
	atProvider?: #AssessmentTemplateObservation @go(AtProvider)
}

// AssessmentTemplate is the Schema for the AssessmentTemplates API. Provides a Inspector assessment template.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AssessmentTemplate: {
	spec:    #AssessmentTemplateSpec   @go(Spec)
	status?: #AssessmentTemplateStatus @go(Status)
}

// AssessmentTemplateList contains a list of AssessmentTemplates
#AssessmentTemplateList: {
	items: [...#AssessmentTemplate] @go(Items,[]AssessmentTemplate)
}
