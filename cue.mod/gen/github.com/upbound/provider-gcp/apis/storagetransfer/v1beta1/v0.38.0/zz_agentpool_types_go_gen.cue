// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storagetransfer/v1beta1

package v1beta1

#AgentPoolInitParameters: {
	// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
	// Structure is documented below.
	bandwidthLimit?: [...#BandwidthLimitInitParameters] @go(BandwidthLimit,[]BandwidthLimitInitParameters)

	// Specifies the client-specified AgentPool description.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#AgentPoolObservation: {
	// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
	// Structure is documented below.
	bandwidthLimit?: [...#BandwidthLimitObservation] @go(BandwidthLimit,[]BandwidthLimitObservation)

	// Specifies the client-specified AgentPool description.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format projects/{{project}}/agentPools/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Specifies the state of the AgentPool.
	state?: null | string @go(State,*string)
}

#AgentPoolParameters: {
	// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	bandwidthLimit?: [...#BandwidthLimitParameters] @go(BandwidthLimit,[]BandwidthLimitParameters)

	// Specifies the client-specified AgentPool description.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#BandwidthLimitInitParameters: {
	// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
	limitMbps?: null | string @go(LimitMbps,*string)
}

#BandwidthLimitObservation: {
	// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
	limitMbps?: null | string @go(LimitMbps,*string)
}

#BandwidthLimitParameters: {
	// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
	// +kubebuilder:validation:Optional
	limitMbps?: null | string @go(LimitMbps,*string)
}

// AgentPoolSpec defines the desired state of AgentPool
#AgentPoolSpec: {
	forProvider: #AgentPoolParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #AgentPoolInitParameters @go(InitProvider)
}

// AgentPoolStatus defines the observed state of AgentPool.
#AgentPoolStatus: {
	atProvider?: #AgentPoolObservation @go(AtProvider)
}

// AgentPool is the Schema for the AgentPools API. Represents an On-Premises Agent pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#AgentPool: {
	spec:    #AgentPoolSpec   @go(Spec)
	status?: #AgentPoolStatus @go(Status)
}

// AgentPoolList contains a list of AgentPools
#AgentPoolList: {
	items: [...#AgentPool] @go(Items,[]AgentPool)
}
