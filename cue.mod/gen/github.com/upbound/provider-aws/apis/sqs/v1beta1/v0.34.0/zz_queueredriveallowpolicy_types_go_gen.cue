// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sqs/v1beta1

package v1beta1

#QueueRedriveAllowPolicyObservation: {
	id?: null | string @go(ID,*string)

	// The URL of the SQS Queue to which to attach the policy
	queueUrl?: null | string @go(QueueURL,*string)

	// The JSON redrive allow policy for the SQS queue. Learn more in the Amazon SQS dead-letter queues documentation.
	redriveAllowPolicy?: null | string @go(RedriveAllowPolicy,*string)
}

#QueueRedriveAllowPolicyParameters: {
	// The URL of the SQS Queue to which to attach the policy
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.TerraformID()
	// +kubebuilder:validation:Optional
	queueUrl?: null | string @go(QueueURL,*string)

	// The JSON redrive allow policy for the SQS queue. Learn more in the Amazon SQS dead-letter queues documentation.
	// +kubebuilder:validation:Optional
	redriveAllowPolicy?: null | string @go(RedriveAllowPolicy,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// QueueRedriveAllowPolicySpec defines the desired state of QueueRedriveAllowPolicy
#QueueRedriveAllowPolicySpec: {
	forProvider: #QueueRedriveAllowPolicyParameters @go(ForProvider)
}

// QueueRedriveAllowPolicyStatus defines the observed state of QueueRedriveAllowPolicy.
#QueueRedriveAllowPolicyStatus: {
	atProvider?: #QueueRedriveAllowPolicyObservation @go(AtProvider)
}

// QueueRedriveAllowPolicy is the Schema for the QueueRedriveAllowPolicys API. Provides a SQS Queue Redrive Allow Policy resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#QueueRedriveAllowPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.redriveAllowPolicy)",message="redriveAllowPolicy is a required parameter"
	spec:    #QueueRedriveAllowPolicySpec   @go(Spec)
	status?: #QueueRedriveAllowPolicyStatus @go(Status)
}

// QueueRedriveAllowPolicyList contains a list of QueueRedriveAllowPolicys
#QueueRedriveAllowPolicyList: {
	items: [...#QueueRedriveAllowPolicy] @go(Items,[]QueueRedriveAllowPolicy)
}
