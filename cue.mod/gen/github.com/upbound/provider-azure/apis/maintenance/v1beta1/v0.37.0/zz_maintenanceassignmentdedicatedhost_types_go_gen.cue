// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/maintenance/v1beta1

package v1beta1

#MaintenanceAssignmentDedicatedHostInitParameters: {
	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)
}

#MaintenanceAssignmentDedicatedHostObservation: {
	// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
	dedicatedHostId?: null | string @go(DedicatedHostID,*string)

	// The ID of the Maintenance Assignment.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
	maintenanceConfigurationId?: null | string @go(MaintenanceConfigurationID,*string)
}

#MaintenanceAssignmentDedicatedHostParameters: {
	// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/compute/v1beta1.DedicatedHost
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dedicatedHostId?: null | string @go(DedicatedHostID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/maintenance/v1beta1.MaintenanceConfiguration
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	maintenanceConfigurationId?: null | string @go(MaintenanceConfigurationID,*string)
}

// MaintenanceAssignmentDedicatedHostSpec defines the desired state of MaintenanceAssignmentDedicatedHost
#MaintenanceAssignmentDedicatedHostSpec: {
	forProvider: #MaintenanceAssignmentDedicatedHostParameters @go(ForProvider)

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
	initProvider?: #MaintenanceAssignmentDedicatedHostInitParameters @go(InitProvider)
}

// MaintenanceAssignmentDedicatedHostStatus defines the observed state of MaintenanceAssignmentDedicatedHost.
#MaintenanceAssignmentDedicatedHostStatus: {
	atProvider?: #MaintenanceAssignmentDedicatedHostObservation @go(AtProvider)
}

// MaintenanceAssignmentDedicatedHost is the Schema for the MaintenanceAssignmentDedicatedHosts API. Manages a Maintenance Assignment to Dedicated Host.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MaintenanceAssignmentDedicatedHost: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #MaintenanceAssignmentDedicatedHostSpec   @go(Spec)
	status?: #MaintenanceAssignmentDedicatedHostStatus @go(Status)
}

// MaintenanceAssignmentDedicatedHostList contains a list of MaintenanceAssignmentDedicatedHosts
#MaintenanceAssignmentDedicatedHostList: {
	items: [...#MaintenanceAssignmentDedicatedHost] @go(Items,[]MaintenanceAssignmentDedicatedHost)
}
