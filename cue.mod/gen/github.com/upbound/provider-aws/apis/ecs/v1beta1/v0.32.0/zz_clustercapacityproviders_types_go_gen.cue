// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ecs/v1beta1

package v1beta1

#ClusterCapacityProvidersDefaultCapacityProviderStrategyObservation: {
}

#ClusterCapacityProvidersDefaultCapacityProviderStrategyParameters: {
	// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to 0.
	// +kubebuilder:validation:Optional
	base?: null | float64 @go(Base,*float64)

	// Name of the capacity provider.
	// +kubebuilder:validation:Required
	capacityProvider?: null | string @go(CapacityProvider,*string)

	// The relative percentage of the total number of launched tasks that should use the specified capacity provider. The weight value is taken into consideration after the base count of tasks has been satisfied. Defaults to 0.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

#ClusterCapacityProvidersObservation: {
	// Same as cluster_name.
	id?: null | string @go(ID,*string)
}

#ClusterCapacityProvidersParameters: {
	// Set of names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT.
	// +kubebuilder:validation:Optional
	capacityProviders?: [...null | string] @go(CapacityProviders,[]*string)

	// Name of the ECS cluster to manage capacity providers for.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ecs/v1beta1.Cluster
	// +kubebuilder:validation:Optional
	clusterName?: null | string @go(ClusterName,*string)

	// Set of capacity provider strategies to use by default for the cluster. Detailed below.
	// +kubebuilder:validation:Optional
	defaultCapacityProviderStrategy?: [...#ClusterCapacityProvidersDefaultCapacityProviderStrategyParameters] @go(DefaultCapacityProviderStrategy,[]ClusterCapacityProvidersDefaultCapacityProviderStrategyParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// ClusterCapacityProvidersSpec defines the desired state of ClusterCapacityProviders
#ClusterCapacityProvidersSpec: {
	forProvider: #ClusterCapacityProvidersParameters @go(ForProvider)
}

// ClusterCapacityProvidersStatus defines the observed state of ClusterCapacityProviders.
#ClusterCapacityProvidersStatus: {
	atProvider?: #ClusterCapacityProvidersObservation @go(AtProvider)
}

// ClusterCapacityProviders is the Schema for the ClusterCapacityProviderss API. Provides an ECS cluster capacity providers resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ClusterCapacityProviders: {
	spec:    #ClusterCapacityProvidersSpec   @go(Spec)
	status?: #ClusterCapacityProvidersStatus @go(Status)
}

// ClusterCapacityProvidersList contains a list of ClusterCapacityProviderss
#ClusterCapacityProvidersList: {
	items: [...#ClusterCapacityProviders] @go(Items,[]ClusterCapacityProviders)
}
