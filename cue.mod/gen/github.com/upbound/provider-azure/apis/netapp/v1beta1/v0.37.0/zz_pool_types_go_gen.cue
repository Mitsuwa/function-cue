// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/netapp/v1beta1

package v1beta1

#PoolInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// QoS Type of the pool. Valid values include Auto or Manual.
	qosType?: null | string @go(QosType,*string)

	// The service level of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Provisioned size of the pool in TB. Value must be between 4 and 500.
	sizeInTb?: null | float64 @go(SizeInTb,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PoolObservation: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	accountName?: null | string @go(AccountName,*string)

	// The ID of the NetApp Pool.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// QoS Type of the pool. Valid values include Auto or Manual.
	qosType?: null | string @go(QosType,*string)

	// The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The service level of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Provisioned size of the pool in TB. Value must be between 4 and 500.
	sizeInTb?: null | float64 @go(SizeInTb,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PoolParameters: {
	// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Account
	// +kubebuilder:validation:Optional
	accountName?: null | string @go(AccountName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// QoS Type of the pool. Valid values include Auto or Manual.
	// +kubebuilder:validation:Optional
	qosType?: null | string @go(QosType,*string)

	// The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The service level of the file system. Valid values include Premium, Standard, or Ultra. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	serviceLevel?: null | string @go(ServiceLevel,*string)

	// Provisioned size of the pool in TB. Value must be between 4 and 500.
	// +kubebuilder:validation:Optional
	sizeInTb?: null | float64 @go(SizeInTb,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// PoolSpec defines the desired state of Pool
#PoolSpec: {
	forProvider: #PoolParameters @go(ForProvider)

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
	initProvider?: #PoolInitParameters @go(InitProvider)
}

// PoolStatus defines the observed state of Pool.
#PoolStatus: {
	atProvider?: #PoolObservation @go(AtProvider)
}

// Pool is the Schema for the Pools API. Manages a Pool within a NetApp Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Pool: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.serviceLevel) || (has(self.initProvider) && has(self.initProvider.serviceLevel))",message="spec.forProvider.serviceLevel is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sizeInTb) || (has(self.initProvider) && has(self.initProvider.sizeInTb))",message="spec.forProvider.sizeInTb is a required parameter"
	spec:    #PoolSpec   @go(Spec)
	status?: #PoolStatus @go(Status)
}

// PoolList contains a list of Pools
#PoolList: {
	items: [...#Pool] @go(Items,[]Pool)
}
