// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elb/v1beta1

package v1beta1

#AttributeObservation: {
	// The name of the SSL negotiation policy.
	name?: null | string @go(Name,*string)

	// The value of the attribute
	value?: null | string @go(Value,*string)
}

#AttributeParameters: {
	// The name of the SSL negotiation policy.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The value of the attribute
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#LBSSLNegotiationPolicyObservation: {
	// An SSL Negotiation policy attribute. Each has two properties:
	attribute?: [...#AttributeObservation] @go(Attribute,[]AttributeObservation)

	// The ID of the policy.
	id?: null | string @go(ID,*string)

	// The load balancer port to which the policy
	// should be applied. This must be an active listener on the load
	// balancer.
	lbPort?: null | float64 @go(LBPort,*float64)

	// The load balancer to which the policy
	// should be attached.
	loadBalancer?: null | string @go(LoadBalancer,*string)

	// The name of the SSL negotiation policy.
	name?: null | string @go(Name,*string)

	// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
	triggers?: {[string]: null | string} @go(Triggers,map[string]*string)
}

#LBSSLNegotiationPolicyParameters: {
	// An SSL Negotiation policy attribute. Each has two properties:
	// +kubebuilder:validation:Optional
	attribute?: [...#AttributeParameters] @go(Attribute,[]AttributeParameters)

	// The load balancer port to which the policy
	// should be applied. This must be an active listener on the load
	// balancer.
	// +kubebuilder:validation:Optional
	lbPort?: null | float64 @go(LBPort,*float64)

	// The load balancer to which the policy
	// should be attached.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elb/v1beta1.ELB
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	loadBalancer?: null | string @go(LoadBalancer,*string)

	// The name of the SSL negotiation policy.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
	// +kubebuilder:validation:Optional
	triggers?: {[string]: null | string} @go(Triggers,map[string]*string)
}

// LBSSLNegotiationPolicySpec defines the desired state of LBSSLNegotiationPolicy
#LBSSLNegotiationPolicySpec: {
	forProvider: #LBSSLNegotiationPolicyParameters @go(ForProvider)
}

// LBSSLNegotiationPolicyStatus defines the observed state of LBSSLNegotiationPolicy.
#LBSSLNegotiationPolicyStatus: {
	atProvider?: #LBSSLNegotiationPolicyObservation @go(AtProvider)
}

// LBSSLNegotiationPolicy is the Schema for the LBSSLNegotiationPolicys API. Provides a load balancer SSL negotiation policy, which allows an ELB to control which ciphers and protocols are supported during SSL negotiations between a client and a load balancer.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#LBSSLNegotiationPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.lbPort)",message="lbPort is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #LBSSLNegotiationPolicySpec   @go(Spec)
	status?: #LBSSLNegotiationPolicyStatus @go(Status)
}

// LBSSLNegotiationPolicyList contains a list of LBSSLNegotiationPolicys
#LBSSLNegotiationPolicyList: {
	items: [...#LBSSLNegotiationPolicy] @go(Items,[]LBSSLNegotiationPolicy)
}
