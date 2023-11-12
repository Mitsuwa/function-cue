// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/secretsmanager/v1beta1

package v1beta1

#SecretPolicyObservation: {
	// Amazon Resource Name (ARN) of the secret.
	id?: null | string @go(ID,*string)
}

#SecretPolicyParameters: {
	// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
	// +kubebuilder:validation:Optional
	blockPublicPolicy?: null | bool @go(BlockPublicPolicy,*bool)

	// Valid JSON document representing a resource policy. Unlike aws_secretsmanager_secret, where policy can be set to "{}" to delete the policy, "{}" is not a valid policy since policy is required.
	// +kubebuilder:validation:Required
	policy?: null | string @go(Policy,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Secret ARN.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/secretsmanager/v1beta1.Secret
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	secretArn?: null | string @go(SecretArn,*string)
}

// SecretPolicySpec defines the desired state of SecretPolicy
#SecretPolicySpec: {
	forProvider: #SecretPolicyParameters @go(ForProvider)
}

// SecretPolicyStatus defines the observed state of SecretPolicy.
#SecretPolicyStatus: {
	atProvider?: #SecretPolicyObservation @go(AtProvider)
}

// SecretPolicy is the Schema for the SecretPolicys API. Provides a resource to manage AWS Secrets Manager secret policy
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SecretPolicy: {
	spec:    #SecretPolicySpec   @go(Spec)
	status?: #SecretPolicyStatus @go(Status)
}

// SecretPolicyList contains a list of SecretPolicys
#SecretPolicyList: {
	items: [...#SecretPolicy] @go(Items,[]SecretPolicy)
}
