// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storagecache/v1beta1

package v1beta1

#HPCCacheBlobTargetObservation: {
	// The name of the access policy applied to this target. Defaults to default.
	accessPolicyName?: null | string @go(AccessPolicyName,*string)

	// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
	cacheName?: null | string @go(CacheName,*string)

	// The ID of the HPC Cache Blob Target.
	id?: null | string @go(ID,*string)

	// The client-facing file path of the HPC Cache Blob Target.
	namespacePath?: null | string @go(NamespacePath,*string)

	// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
	storageContainerId?: null | string @go(StorageContainerID,*string)
}

#HPCCacheBlobTargetParameters: {
	// The name of the access policy applied to this target. Defaults to default.
	// +kubebuilder:validation:Optional
	accessPolicyName?: null | string @go(AccessPolicyName,*string)

	// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storagecache/v1beta1.HPCCache
	// +kubebuilder:validation:Optional
	cacheName?: null | string @go(CacheName,*string)

	// The client-facing file path of the HPC Cache Blob Target.
	// +kubebuilder:validation:Optional
	namespacePath?: null | string @go(NamespacePath,*string)

	// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Container
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("resource_manager_id",true)
	// +kubebuilder:validation:Optional
	storageContainerId?: null | string @go(StorageContainerID,*string)
}

// HPCCacheBlobTargetSpec defines the desired state of HPCCacheBlobTarget
#HPCCacheBlobTargetSpec: {
	forProvider: #HPCCacheBlobTargetParameters @go(ForProvider)
}

// HPCCacheBlobTargetStatus defines the observed state of HPCCacheBlobTarget.
#HPCCacheBlobTargetStatus: {
	atProvider?: #HPCCacheBlobTargetObservation @go(AtProvider)
}

// HPCCacheBlobTarget is the Schema for the HPCCacheBlobTargets API. Manages a Blob Target within a HPC Cache.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#HPCCacheBlobTarget: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.namespacePath)",message="namespacePath is a required parameter"
	spec:    #HPCCacheBlobTargetSpec   @go(Spec)
	status?: #HPCCacheBlobTargetStatus @go(Status)
}

// HPCCacheBlobTargetList contains a list of HPCCacheBlobTargets
#HPCCacheBlobTargetList: {
	items: [...#HPCCacheBlobTarget] @go(Items,[]HPCCacheBlobTarget)
}
