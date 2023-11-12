// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sqs/v1beta1

package v1beta1

#QueuePolicyObservation: {
	id?: null | string @go(ID,*string)

	// The JSON policy for the SQS queue.
	policy?: null | string @go(Policy,*string)

	// The URL of the SQS Queue to which to attach the policy
	queueUrl?: null | string @go(QueueURL,*string)
}

#QueuePolicyParameters: {
	// The JSON policy for the SQS queue.
	// +kubebuilder:validation:Optional
	policy?: null | string @go(Policy,*string)

	// The URL of the SQS Queue to which to attach the policy
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.TerraformID()
	// +kubebuilder:validation:Optional
	queueUrl?: null | string @go(QueueURL,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// QueuePolicySpec defines the desired state of QueuePolicy
#QueuePolicySpec: {
	forProvider: #QueuePolicyParameters @go(ForProvider)
}

// QueuePolicyStatus defines the observed state of QueuePolicy.
#QueuePolicyStatus: {
	atProvider?: #QueuePolicyObservation @go(AtProvider)
}

// QueuePolicy is the Schema for the QueuePolicys API. Provides a SQS Queue Policy resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#QueuePolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.policy)",message="policy is a required parameter"
	spec:    #QueuePolicySpec   @go(Spec)
	status?: #QueuePolicyStatus @go(Status)
}

// QueuePolicyList contains a list of QueuePolicys
#QueuePolicyList: {
	items: [...#QueuePolicy] @go(Items,[]QueuePolicy)
}
