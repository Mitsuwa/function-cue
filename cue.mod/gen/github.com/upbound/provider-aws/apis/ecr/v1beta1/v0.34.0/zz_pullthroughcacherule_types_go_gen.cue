// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ecr/v1beta1

package v1beta1

#PullThroughCacheRuleObservation: {
	// The repository name prefix to use when caching images from the source registry.
	ecrRepositoryPrefix?: null | string @go(EcrRepositoryPrefix,*string)
	id?:                  null | string @go(ID,*string)

	// The registry ID where the repository was created.
	registryId?: null | string @go(RegistryID,*string)

	// The registry URL of the upstream public registry to use as the source.
	upstreamRegistryUrl?: null | string @go(UpstreamRegistryURL,*string)
}

#PullThroughCacheRuleParameters: {
	// The repository name prefix to use when caching images from the source registry.
	// +kubebuilder:validation:Optional
	ecrRepositoryPrefix?: null | string @go(EcrRepositoryPrefix,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The registry URL of the upstream public registry to use as the source.
	// +kubebuilder:validation:Optional
	upstreamRegistryUrl?: null | string @go(UpstreamRegistryURL,*string)
}

// PullThroughCacheRuleSpec defines the desired state of PullThroughCacheRule
#PullThroughCacheRuleSpec: {
	forProvider: #PullThroughCacheRuleParameters @go(ForProvider)
}

// PullThroughCacheRuleStatus defines the observed state of PullThroughCacheRule.
#PullThroughCacheRuleStatus: {
	atProvider?: #PullThroughCacheRuleObservation @go(AtProvider)
}

// PullThroughCacheRule is the Schema for the PullThroughCacheRules API. Provides an Elastic Container Registry Pull Through Cache Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#PullThroughCacheRule: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ecrRepositoryPrefix)",message="ecrRepositoryPrefix is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.upstreamRegistryUrl)",message="upstreamRegistryUrl is a required parameter"
	spec:    #PullThroughCacheRuleSpec   @go(Spec)
	status?: #PullThroughCacheRuleStatus @go(Status)
}

// PullThroughCacheRuleList contains a list of PullThroughCacheRules
#PullThroughCacheRuleList: {
	items: [...#PullThroughCacheRule] @go(Items,[]PullThroughCacheRule)
}
