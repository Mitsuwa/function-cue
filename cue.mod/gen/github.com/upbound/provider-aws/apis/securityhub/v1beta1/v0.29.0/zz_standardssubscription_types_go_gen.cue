// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/securityhub/v1beta1

package v1beta1

#StandardsSubscriptionObservation: {
	// The ARN of a resource that represents your subscription to a supported standard.
	id?: null | string @go(ID,*string)
}

#StandardsSubscriptionParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ARN of a standard - see below.
	// +kubebuilder:validation:Required
	standardsArn?: null | string @go(StandardsArn,*string)
}

// StandardsSubscriptionSpec defines the desired state of StandardsSubscription
#StandardsSubscriptionSpec: {
	forProvider: #StandardsSubscriptionParameters @go(ForProvider)
}

// StandardsSubscriptionStatus defines the observed state of StandardsSubscription.
#StandardsSubscriptionStatus: {
	atProvider?: #StandardsSubscriptionObservation @go(AtProvider)
}

// StandardsSubscription is the Schema for the StandardsSubscriptions API. Subscribes to a Security Hub standard.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#StandardsSubscription: {
	spec:    #StandardsSubscriptionSpec   @go(Spec)
	status?: #StandardsSubscriptionStatus @go(Status)
}

// StandardsSubscriptionList contains a list of StandardsSubscriptions
#StandardsSubscriptionList: {
	items: [...#StandardsSubscription] @go(Items,[]StandardsSubscription)
}
