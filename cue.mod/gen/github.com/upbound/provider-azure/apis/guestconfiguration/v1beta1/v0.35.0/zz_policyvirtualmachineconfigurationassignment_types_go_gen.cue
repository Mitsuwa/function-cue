// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/guestconfiguration/v1beta1

package v1beta1

#ConfigurationInitParameters: {
	// The assignment type for the Guest Configuration Assignment. Possible values are Audit, ApplyAndAutoCorrect, ApplyAndMonitor and DeployAndAutoCorrect.
	assignmentType?: null | string @go(AssignmentType,*string)

	// The content hash for the Guest Configuration package.
	contentHash?: null | string @go(ContentHash,*string)

	// The content URI where the Guest Configuration package is stored.
	contentUri?: null | string @go(ContentURI,*string)

	// One or more parameter blocks as defined below which define what configuration parameters and values against.
	parameter?: [...#ParameterInitParameters] @go(Parameter,[]ParameterInitParameters)

	// The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
	version?: null | string @go(Version,*string)
}

#ConfigurationObservation: {
	// The assignment type for the Guest Configuration Assignment. Possible values are Audit, ApplyAndAutoCorrect, ApplyAndMonitor and DeployAndAutoCorrect.
	assignmentType?: null | string @go(AssignmentType,*string)

	// The content hash for the Guest Configuration package.
	contentHash?: null | string @go(ContentHash,*string)

	// The content URI where the Guest Configuration package is stored.
	contentUri?: null | string @go(ContentURI,*string)

	// One or more parameter blocks as defined below which define what configuration parameters and values against.
	parameter?: [...#ParameterObservation] @go(Parameter,[]ParameterObservation)

	// The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
	version?: null | string @go(Version,*string)
}

#ConfigurationParameters: {
	// The assignment type for the Guest Configuration Assignment. Possible values are Audit, ApplyAndAutoCorrect, ApplyAndMonitor and DeployAndAutoCorrect.
	// +kubebuilder:validation:Optional
	assignmentType?: null | string @go(AssignmentType,*string)

	// The content hash for the Guest Configuration package.
	// +kubebuilder:validation:Optional
	contentHash?: null | string @go(ContentHash,*string)

	// The content URI where the Guest Configuration package is stored.
	// +kubebuilder:validation:Optional
	contentUri?: null | string @go(ContentURI,*string)

	// One or more parameter blocks as defined below which define what configuration parameters and values against.
	// +kubebuilder:validation:Optional
	parameter?: [...#ParameterParameters] @go(Parameter,[]ParameterParameters)

	// The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#ParameterInitParameters: {
	// The name of the configuration parameter to check.
	name?: null | string @go(Name,*string)

	// The value to check the configuration parameter with.
	value?: null | string @go(Value,*string)
}

#ParameterObservation: {
	// The name of the configuration parameter to check.
	name?: null | string @go(Name,*string)

	// The value to check the configuration parameter with.
	value?: null | string @go(Value,*string)
}

#ParameterParameters: {
	// The name of the configuration parameter to check.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The value to check the configuration parameter with.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#PolicyVirtualMachineConfigurationAssignmentInitParameters: {
	// A configuration block as defined below.
	configuration?: [...#ConfigurationInitParameters] @go(Configuration,[]ConfigurationInitParameters)

	// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)
}

#PolicyVirtualMachineConfigurationAssignmentObservation: {
	// A configuration block as defined below.
	configuration?: [...#ConfigurationObservation] @go(Configuration,[]ConfigurationObservation)

	// The ID of the Policy Virtual Machine Configuration Assignment.
	id?: null | string @go(ID,*string)

	// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
	virtualMachineId?: null | string @go(VirtualMachineID,*string)
}

#PolicyVirtualMachineConfigurationAssignmentParameters: {
	// A configuration block as defined below.
	// +kubebuilder:validation:Optional
	configuration?: [...#ConfigurationParameters] @go(Configuration,[]ConfigurationParameters)

	// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/compute/v1beta1.WindowsVirtualMachine
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualMachineId?: null | string @go(VirtualMachineID,*string)
}

// PolicyVirtualMachineConfigurationAssignmentSpec defines the desired state of PolicyVirtualMachineConfigurationAssignment
#PolicyVirtualMachineConfigurationAssignmentSpec: {
	forProvider: #PolicyVirtualMachineConfigurationAssignmentParameters @go(ForProvider)

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
	initProvider?: #PolicyVirtualMachineConfigurationAssignmentInitParameters @go(InitProvider)
}

// PolicyVirtualMachineConfigurationAssignmentStatus defines the observed state of PolicyVirtualMachineConfigurationAssignment.
#PolicyVirtualMachineConfigurationAssignmentStatus: {
	atProvider?: #PolicyVirtualMachineConfigurationAssignmentObservation @go(AtProvider)
}

// PolicyVirtualMachineConfigurationAssignment is the Schema for the PolicyVirtualMachineConfigurationAssignments API. Applies a Guest Configuration Policy to a Virtual Machine.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PolicyVirtualMachineConfigurationAssignment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.configuration) || has(self.initProvider.configuration)",message="configuration is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #PolicyVirtualMachineConfigurationAssignmentSpec   @go(Spec)
	status?: #PolicyVirtualMachineConfigurationAssignmentStatus @go(Status)
}

// PolicyVirtualMachineConfigurationAssignmentList contains a list of PolicyVirtualMachineConfigurationAssignments
#PolicyVirtualMachineConfigurationAssignmentList: {
	items: [...#PolicyVirtualMachineConfigurationAssignment] @go(Items,[]PolicyVirtualMachineConfigurationAssignment)
}
