// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/devtestlab/v1beta1

package v1beta1

#PolicyInitParameters: {
	// A description for the Policy.
	description?: null | string @go(Description,*string)

	// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
	evaluatorType?: null | string @go(EvaluatorType,*string)

	// The Fact Data for this Policy.
	factData?: null | string @go(FactData,*string)

	// Specifies the name of the Dev Test Policy. Possible values are GalleryImage, LabPremiumVmCount, LabTargetCost, LabVmCount, LabVmSize, UserOwnedLabPremiumVmCount, UserOwnedLabVmCount and UserOwnedLabVmCountInSubnet. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
	policySetName?: null | string @go(PolicySetName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Threshold for this Policy.
	threshold?: null | string @go(Threshold,*string)
}

#PolicyObservation: {
	// A description for the Policy.
	description?: null | string @go(Description,*string)

	// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
	evaluatorType?: null | string @go(EvaluatorType,*string)

	// The Fact Data for this Policy.
	factData?: null | string @go(FactData,*string)

	// The ID of the Dev Test Policy.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
	labName?: null | string @go(LabName,*string)

	// Specifies the name of the Dev Test Policy. Possible values are GalleryImage, LabPremiumVmCount, LabTargetCost, LabVmCount, LabVmSize, UserOwnedLabPremiumVmCount, UserOwnedLabVmCount and UserOwnedLabVmCountInSubnet. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
	policySetName?: null | string @go(PolicySetName,*string)

	// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Threshold for this Policy.
	threshold?: null | string @go(Threshold,*string)
}

#PolicyParameters: {
	// A description for the Policy.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	evaluatorType?: null | string @go(EvaluatorType,*string)

	// The Fact Data for this Policy.
	// +kubebuilder:validation:Optional
	factData?: null | string @go(FactData,*string)

	// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devtestlab/v1beta1.Lab
	// +kubebuilder:validation:Optional
	labName?: null | string @go(LabName,*string)

	// Specifies the name of the Dev Test Policy. Possible values are GalleryImage, LabPremiumVmCount, LabTargetCost, LabVmCount, LabVmSize, UserOwnedLabPremiumVmCount, UserOwnedLabVmCount and UserOwnedLabVmCountInSubnet. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	policySetName?: null | string @go(PolicySetName,*string)

	// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Threshold for this Policy.
	// +kubebuilder:validation:Optional
	threshold?: null | string @go(Threshold,*string)
}

// PolicySpec defines the desired state of Policy
#PolicySpec: {
	forProvider: #PolicyParameters @go(ForProvider)

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
	initProvider?: #PolicyInitParameters @go(InitProvider)
}

// PolicyStatus defines the observed state of Policy.
#PolicyStatus: {
	atProvider?: #PolicyObservation @go(AtProvider)
}

// Policy is the Schema for the Policys API. Manages a Policy within a Dev Test Policy Set.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Policy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.evaluatorType) || (has(self.initProvider) && has(self.initProvider.evaluatorType))",message="spec.forProvider.evaluatorType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.policySetName) || (has(self.initProvider) && has(self.initProvider.policySetName))",message="spec.forProvider.policySetName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.threshold) || (has(self.initProvider) && has(self.initProvider.threshold))",message="spec.forProvider.threshold is a required parameter"
	spec:    #PolicySpec   @go(Spec)
	status?: #PolicyStatus @go(Status)
}

// PolicyList contains a list of Policys
#PolicyList: {
	items: [...#Policy] @go(Items,[]Policy)
}
