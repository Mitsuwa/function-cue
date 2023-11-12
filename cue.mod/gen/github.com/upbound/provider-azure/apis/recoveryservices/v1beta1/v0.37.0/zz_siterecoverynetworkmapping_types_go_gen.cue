// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/recoveryservices/v1beta1

package v1beta1

#SiteRecoveryNetworkMappingInitParameters: {
	// The name of the network mapping. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
	sourceRecoveryFabricName?: null | string @go(SourceRecoveryFabricName,*string)

	// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
	targetRecoveryFabricName?: null | string @go(TargetRecoveryFabricName,*string)
}

#SiteRecoveryNetworkMappingObservation: {
	// The ID of the Site Recovery Network Mapping.
	id?: null | string @go(ID,*string)

	// The name of the network mapping. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The name of the vault that should be updated. Changing this forces a new resource to be created.
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The id of the primary network. Changing this forces a new resource to be created.
	sourceNetworkId?: null | string @go(SourceNetworkID,*string)

	// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
	sourceRecoveryFabricName?: null | string @go(SourceRecoveryFabricName,*string)

	// The id of the recovery network. Changing this forces a new resource to be created.
	targetNetworkId?: null | string @go(TargetNetworkID,*string)

	// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
	targetRecoveryFabricName?: null | string @go(TargetRecoveryFabricName,*string)
}

#SiteRecoveryNetworkMappingParameters: {
	// The name of the network mapping. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the vault that should be updated. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.Vault
	// +kubebuilder:validation:Optional
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The id of the primary network. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	sourceNetworkId?: null | string @go(SourceNetworkID,*string)

	// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	sourceRecoveryFabricName?: null | string @go(SourceRecoveryFabricName,*string)

	// The id of the recovery network. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetNetworkId?: null | string @go(TargetNetworkID,*string)

	// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	targetRecoveryFabricName?: null | string @go(TargetRecoveryFabricName,*string)
}

// SiteRecoveryNetworkMappingSpec defines the desired state of SiteRecoveryNetworkMapping
#SiteRecoveryNetworkMappingSpec: {
	forProvider: #SiteRecoveryNetworkMappingParameters @go(ForProvider)

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
	initProvider?: #SiteRecoveryNetworkMappingInitParameters @go(InitProvider)
}

// SiteRecoveryNetworkMappingStatus defines the observed state of SiteRecoveryNetworkMapping.
#SiteRecoveryNetworkMappingStatus: {
	atProvider?: #SiteRecoveryNetworkMappingObservation @go(AtProvider)
}

// SiteRecoveryNetworkMapping is the Schema for the SiteRecoveryNetworkMappings API. Manages a site recovery network mapping on Azure.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SiteRecoveryNetworkMapping: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sourceRecoveryFabricName) || (has(self.initProvider) && has(self.initProvider.sourceRecoveryFabricName))",message="spec.forProvider.sourceRecoveryFabricName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.targetRecoveryFabricName) || (has(self.initProvider) && has(self.initProvider.targetRecoveryFabricName))",message="spec.forProvider.targetRecoveryFabricName is a required parameter"
	spec:    #SiteRecoveryNetworkMappingSpec   @go(Spec)
	status?: #SiteRecoveryNetworkMappingStatus @go(Status)
}

// SiteRecoveryNetworkMappingList contains a list of SiteRecoveryNetworkMappings
#SiteRecoveryNetworkMappingList: {
	items: [...#SiteRecoveryNetworkMapping] @go(Items,[]SiteRecoveryNetworkMapping)
}
