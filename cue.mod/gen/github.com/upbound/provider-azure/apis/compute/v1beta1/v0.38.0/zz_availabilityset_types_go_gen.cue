// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/compute/v1beta1

package v1beta1

#AvailabilitySetInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies whether the availability set is managed or not. Possible values are true (to specify aligned) or false (to specify classic). Default is true. Changing this forces a new resource to be created.
	managed?: null | bool @go(Managed,*bool)

	// Specifies the number of fault domains that are used. Defaults to 3. Changing this forces a new resource to be created.
	platformFaultDomainCount?: null | float64 @go(PlatformFaultDomainCount,*float64)

	// Specifies the number of update domains that are used. Defaults to 5. Changing this forces a new resource to be created.
	platformUpdateDomainCount?: null | float64 @go(PlatformUpdateDomainCount,*float64)

	// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
	proximityPlacementGroupId?: null | string @go(ProximityPlacementGroupID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AvailabilitySetObservation: {
	// The ID of the Availability Set.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies whether the availability set is managed or not. Possible values are true (to specify aligned) or false (to specify classic). Default is true. Changing this forces a new resource to be created.
	managed?: null | bool @go(Managed,*bool)

	// Specifies the number of fault domains that are used. Defaults to 3. Changing this forces a new resource to be created.
	platformFaultDomainCount?: null | float64 @go(PlatformFaultDomainCount,*float64)

	// Specifies the number of update domains that are used. Defaults to 5. Changing this forces a new resource to be created.
	platformUpdateDomainCount?: null | float64 @go(PlatformUpdateDomainCount,*float64)

	// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
	proximityPlacementGroupId?: null | string @go(ProximityPlacementGroupID,*string)

	// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AvailabilitySetParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies whether the availability set is managed or not. Possible values are true (to specify aligned) or false (to specify classic). Default is true. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	managed?: null | bool @go(Managed,*bool)

	// Specifies the number of fault domains that are used. Defaults to 3. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	platformFaultDomainCount?: null | float64 @go(PlatformFaultDomainCount,*float64)

	// Specifies the number of update domains that are used. Defaults to 5. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	platformUpdateDomainCount?: null | float64 @go(PlatformUpdateDomainCount,*float64)

	// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	proximityPlacementGroupId?: null | string @go(ProximityPlacementGroupID,*string)

	// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// AvailabilitySetSpec defines the desired state of AvailabilitySet
#AvailabilitySetSpec: {
	forProvider: #AvailabilitySetParameters @go(ForProvider)

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
	initProvider?: #AvailabilitySetInitParameters @go(InitProvider)
}

// AvailabilitySetStatus defines the observed state of AvailabilitySet.
#AvailabilitySetStatus: {
	atProvider?: #AvailabilitySetObservation @go(AtProvider)
}

// AvailabilitySet is the Schema for the AvailabilitySets API. Manages an Availability Set for Virtual Machines.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AvailabilitySet: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #AvailabilitySetSpec   @go(Spec)
	status?: #AvailabilitySetStatus @go(Status)
}

// AvailabilitySetList contains a list of AvailabilitySets
#AvailabilitySetList: {
	items: [...#AvailabilitySet] @go(Items,[]AvailabilitySet)
}
