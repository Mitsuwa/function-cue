// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cache/v1beta1

package v1beta1

#RedisLinkedServerInitParameters: {
	// The location of the linked Redis cache. Changing this forces a new Redis to be created.
	linkedRedisCacheLocation?: null | string @go(LinkedRedisCacheLocation,*string)

	// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are Primary and Secondary.
	serverRole?: null | string @go(ServerRole,*string)
}

#RedisLinkedServerObservation: {
	// The ID of the Redis.
	id?: null | string @go(ID,*string)

	// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
	linkedRedisCacheId?: null | string @go(LinkedRedisCacheID,*string)

	// The location of the linked Redis cache. Changing this forces a new Redis to be created.
	linkedRedisCacheLocation?: null | string @go(LinkedRedisCacheLocation,*string)

	// The name of the linked server.
	name?: null | string @go(Name,*string)

	// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are Primary and Secondary.
	serverRole?: null | string @go(ServerRole,*string)

	// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
	targetRedisCacheName?: null | string @go(TargetRedisCacheName,*string)
}

#RedisLinkedServerParameters: {
	// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
	// +crossplane:generate:reference:type=RedisCache
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	linkedRedisCacheId?: null | string @go(LinkedRedisCacheID,*string)

	// The location of the linked Redis cache. Changing this forces a new Redis to be created.
	// +kubebuilder:validation:Optional
	linkedRedisCacheLocation?: null | string @go(LinkedRedisCacheLocation,*string)

	// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are Primary and Secondary.
	// +kubebuilder:validation:Optional
	serverRole?: null | string @go(ServerRole,*string)

	// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
	// +crossplane:generate:reference:type=RedisCache
	// +kubebuilder:validation:Optional
	targetRedisCacheName?: null | string @go(TargetRedisCacheName,*string)
}

// RedisLinkedServerSpec defines the desired state of RedisLinkedServer
#RedisLinkedServerSpec: {
	forProvider: #RedisLinkedServerParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #RedisLinkedServerInitParameters @go(InitProvider)
}

// RedisLinkedServerStatus defines the observed state of RedisLinkedServer.
#RedisLinkedServerStatus: {
	atProvider?: #RedisLinkedServerObservation @go(AtProvider)
}

// RedisLinkedServer is the Schema for the RedisLinkedServers API. Manages a Redis Linked Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#RedisLinkedServer: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.linkedRedisCacheLocation) || (has(self.initProvider) && has(self.initProvider.linkedRedisCacheLocation))",message="spec.forProvider.linkedRedisCacheLocation is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.serverRole) || (has(self.initProvider) && has(self.initProvider.serverRole))",message="spec.forProvider.serverRole is a required parameter"
	spec:    #RedisLinkedServerSpec   @go(Spec)
	status?: #RedisLinkedServerStatus @go(Status)
}

// RedisLinkedServerList contains a list of RedisLinkedServers
#RedisLinkedServerList: {
	items: [...#RedisLinkedServer] @go(Items,[]RedisLinkedServer)
}
