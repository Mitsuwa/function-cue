// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/devtestlab/v1beta1

package v1beta1

#LabInitParameters: {
	// Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The type of storage used by the Dev Test Lab. Possible values are Standard and Premium. Defaults to Premium.
	storageType?: null | string @go(StorageType,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#LabObservation: {
	// The ID of the Storage Account used for Artifact Storage.
	artifactsStorageAccountId?: null | string @go(ArtifactsStorageAccountID,*string)

	// The ID of the Default Premium Storage Account for this Dev Test Lab.
	defaultPremiumStorageAccountId?: null | string @go(DefaultPremiumStorageAccountID,*string)

	// The ID of the Default Storage Account for this Dev Test Lab.
	defaultStorageAccountId?: null | string @go(DefaultStorageAccountID,*string)

	// The ID of the Dev Test Lab.
	id?: null | string @go(ID,*string)

	// The ID of the Key used for this Dev Test Lab.
	keyVaultId?: null | string @go(KeyVaultID,*string)

	// Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The ID of the Storage Account used for Storage of Premium Data Disk.
	premiumDataDiskStorageAccountId?: null | string @go(PremiumDataDiskStorageAccountID,*string)

	// The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The type of storage used by the Dev Test Lab. Possible values are Standard and Premium. Defaults to Premium.
	storageType?: null | string @go(StorageType,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The unique immutable identifier of the Dev Test Lab.
	uniqueIdentifier?: null | string @go(UniqueIdentifier,*string)
}

#LabParameters: {
	// Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The type of storage used by the Dev Test Lab. Possible values are Standard and Premium. Defaults to Premium.
	// +kubebuilder:validation:Optional
	storageType?: null | string @go(StorageType,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// LabSpec defines the desired state of Lab
#LabSpec: {
	forProvider: #LabParameters @go(ForProvider)

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
	initProvider?: #LabInitParameters @go(InitProvider)
}

// LabStatus defines the observed state of Lab.
#LabStatus: {
	atProvider?: #LabObservation @go(AtProvider)
}

// Lab is the Schema for the Labs API. Manages a Dev Test Lab.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Lab: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #LabSpec   @go(Spec)
	status?: #LabStatus @go(Status)
}

// LabList contains a list of Labs
#LabList: {
	items: [...#Lab] @go(Items,[]Lab)
}
