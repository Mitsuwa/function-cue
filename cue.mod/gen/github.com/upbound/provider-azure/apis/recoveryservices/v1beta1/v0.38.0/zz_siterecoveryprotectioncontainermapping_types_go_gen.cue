// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/recoveryservices/v1beta1

package v1beta1

#AutomaticUpdateInitParameters: {
	// The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
	automationAccountId?: null | string @go(AutomationAccountID,*string)

	// Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to false.
	enabled?: null | bool @go(Enabled,*bool)
}

#AutomaticUpdateObservation: {
	// The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
	automationAccountId?: null | string @go(AutomationAccountID,*string)

	// Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to false.
	enabled?: null | bool @go(Enabled,*bool)
}

#AutomaticUpdateParameters: {
	// The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
	// +kubebuilder:validation:Optional
	automationAccountId?: null | string @go(AutomationAccountID,*string)

	// Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)
}

#SiteRecoveryProtectionContainerMappingInitParameters: {
	// a automatic_update block defined as below.
	automaticUpdate?: [...#AutomaticUpdateInitParameters] @go(AutomaticUpdate,[]AutomaticUpdateInitParameters)
}

#SiteRecoveryProtectionContainerMappingObservation: {
	// a automatic_update block defined as below.
	automaticUpdate?: [...#AutomaticUpdateObservation] @go(AutomaticUpdate,[]AutomaticUpdateObservation)

	// The ID of the Site Recovery Protection Container Mapping.
	id?: null | string @go(ID,*string)

	// Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
	recoveryFabricName?: null | string @go(RecoveryFabricName,*string)

	// Id of the policy to use for this mapping. Changing this forces a new resource to be created.
	recoveryReplicationPolicyId?: null | string @go(RecoveryReplicationPolicyID,*string)

	// Name of the source protection container to map. Changing this forces a new resource to be created.
	recoverySourceProtectionContainerName?: null | string @go(RecoverySourceProtectionContainerName,*string)

	// Id of target protection container to map to. Changing this forces a new resource to be created.
	recoveryTargetProtectionContainerId?: null | string @go(RecoveryTargetProtectionContainerID,*string)

	// The name of the vault that should be updated. Changing this forces a new resource to be created.
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

#SiteRecoveryProtectionContainerMappingParameters: {
	// a automatic_update block defined as below.
	// +kubebuilder:validation:Optional
	automaticUpdate?: [...#AutomaticUpdateParameters] @go(AutomaticUpdate,[]AutomaticUpdateParameters)

	// Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.SiteRecoveryFabric
	// +kubebuilder:validation:Optional
	recoveryFabricName?: null | string @go(RecoveryFabricName,*string)

	// Id of the policy to use for this mapping. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.SiteRecoveryReplicationPolicy
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	recoveryReplicationPolicyId?: null | string @go(RecoveryReplicationPolicyID,*string)

	// Name of the source protection container to map. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.SiteRecoveryProtectionContainer
	// +kubebuilder:validation:Optional
	recoverySourceProtectionContainerName?: null | string @go(RecoverySourceProtectionContainerName,*string)

	// Id of target protection container to map to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.SiteRecoveryProtectionContainer
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	recoveryTargetProtectionContainerId?: null | string @go(RecoveryTargetProtectionContainerID,*string)

	// The name of the vault that should be updated. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/recoveryservices/v1beta1.Vault
	// +kubebuilder:validation:Optional
	recoveryVaultName?: null | string @go(RecoveryVaultName,*string)

	// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

// SiteRecoveryProtectionContainerMappingSpec defines the desired state of SiteRecoveryProtectionContainerMapping
#SiteRecoveryProtectionContainerMappingSpec: {
	forProvider: #SiteRecoveryProtectionContainerMappingParameters @go(ForProvider)

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
	initProvider?: #SiteRecoveryProtectionContainerMappingInitParameters @go(InitProvider)
}

// SiteRecoveryProtectionContainerMappingStatus defines the observed state of SiteRecoveryProtectionContainerMapping.
#SiteRecoveryProtectionContainerMappingStatus: {
	atProvider?: #SiteRecoveryProtectionContainerMappingObservation @go(AtProvider)
}

// SiteRecoveryProtectionContainerMapping is the Schema for the SiteRecoveryProtectionContainerMappings API. Manages a Site Recovery protection container mapping on Azure.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SiteRecoveryProtectionContainerMapping: {
	spec:    #SiteRecoveryProtectionContainerMappingSpec   @go(Spec)
	status?: #SiteRecoveryProtectionContainerMappingStatus @go(Status)
}

// SiteRecoveryProtectionContainerMappingList contains a list of SiteRecoveryProtectionContainerMappings
#SiteRecoveryProtectionContainerMappingList: {
	items: [...#SiteRecoveryProtectionContainerMapping] @go(Items,[]SiteRecoveryProtectionContainerMapping)
}
