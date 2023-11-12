// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sns/v1beta1

package v1beta1

#TopicPolicyObservation: {
	// The ARN of the SNS topic
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// The AWS Account ID of the SNS topic owner
	owner?: null | string @go(Owner,*string)

	// The fully-formed AWS policy as JSON.
	policy?: null | string @go(Policy,*string)
}

#TopicPolicyParameters: {
	// The ARN of the SNS topic
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	arn?: null | string @go(Arn,*string)

	// The fully-formed AWS policy as JSON.
	// +kubebuilder:validation:Optional
	policy?: null | string @go(Policy,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// TopicPolicySpec defines the desired state of TopicPolicy
#TopicPolicySpec: {
	forProvider: #TopicPolicyParameters @go(ForProvider)
}

// TopicPolicyStatus defines the observed state of TopicPolicy.
#TopicPolicyStatus: {
	atProvider?: #TopicPolicyObservation @go(AtProvider)
}

// TopicPolicy is the Schema for the TopicPolicys API. Provides an SNS topic policy resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#TopicPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.policy)",message="policy is a required parameter"
	spec:    #TopicPolicySpec   @go(Spec)
	status?: #TopicPolicyStatus @go(Status)
}

// TopicPolicyList contains a list of TopicPolicys
#TopicPolicyList: {
	items: [...#TopicPolicy] @go(Items,[]TopicPolicy)
}
