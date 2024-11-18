// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/route53/v1beta1

package v1beta1

#DelegationSetObservation: {
	// The Amazon Resource Name (ARN) of the Delegation Set.
	arn?: null | string @go(Arn,*string)

	// The delegation set ID
	id?: null | string @go(ID,*string)

	// A list of authoritative name servers for the hosted zone
	// (effectively a list of NS records).
	nameServers?: [...null | string] @go(NameServers,[]*string)
}

#DelegationSetParameters: {
	// This is a reference name used in Caller Reference
	// (helpful for identifying single delegation set amongst others)
	// +kubebuilder:validation:Optional
	referenceName?: null | string @go(ReferenceName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// DelegationSetSpec defines the desired state of DelegationSet
#DelegationSetSpec: {
	forProvider: #DelegationSetParameters @go(ForProvider)
}

// DelegationSetStatus defines the observed state of DelegationSet.
#DelegationSetStatus: {
	atProvider?: #DelegationSetObservation @go(AtProvider)
}

// DelegationSet is the Schema for the DelegationSets API. Provides a Route53 Delegation Set resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DelegationSet: {
	spec:    #DelegationSetSpec   @go(Spec)
	status?: #DelegationSetStatus @go(Status)
}

// DelegationSetList contains a list of DelegationSets
#DelegationSetList: {
	items: [...#DelegationSet] @go(Items,[]DelegationSet)
}
