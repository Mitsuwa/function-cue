// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#InstanceGroupNamedPortInitParameters: {
	// The name of the instance group.
	group?: null | string @go(Group,*string)

	// The name for this named port. The name must be 1-63 characters
	// long, and comply with RFC1035.
	name?: null | string @go(Name,*string)

	// The port number, which can be a value between 1 and 65535.
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The zone of the instance group.
	zone?: null | string @go(Zone,*string)
}

#InstanceGroupNamedPortObservation: {
	// The name of the instance group.
	group?: null | string @go(Group,*string)

	// an identifier for the resource with format projects/{{project}}/zones/{{zone}}/instanceGroups/{{group}}/{{port}}/{{name}}
	id?: null | string @go(ID,*string)

	// The name for this named port. The name must be 1-63 characters
	// long, and comply with RFC1035.
	name?: null | string @go(Name,*string)

	// The port number, which can be a value between 1 and 65535.
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The zone of the instance group.
	zone?: null | string @go(Zone,*string)
}

#InstanceGroupNamedPortParameters: {
	// The name of the instance group.
	// +kubebuilder:validation:Optional
	group?: null | string @go(Group,*string)

	// The name for this named port. The name must be 1-63 characters
	// long, and comply with RFC1035.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The port number, which can be a value between 1 and 65535.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The zone of the instance group.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

// InstanceGroupNamedPortSpec defines the desired state of InstanceGroupNamedPort
#InstanceGroupNamedPortSpec: {
	forProvider: #InstanceGroupNamedPortParameters @go(ForProvider)

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
	initProvider?: #InstanceGroupNamedPortInitParameters @go(InitProvider)
}

// InstanceGroupNamedPortStatus defines the observed state of InstanceGroupNamedPort.
#InstanceGroupNamedPortStatus: {
	atProvider?: #InstanceGroupNamedPortObservation @go(AtProvider)
}

// InstanceGroupNamedPort is the Schema for the InstanceGroupNamedPorts API. Mange the named ports setting for a managed instance group without managing the group as whole.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#InstanceGroupNamedPort: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.group) || (has(self.initProvider) && has(self.initProvider.group))",message="spec.forProvider.group is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.port) || (has(self.initProvider) && has(self.initProvider.port))",message="spec.forProvider.port is a required parameter"
	spec:    #InstanceGroupNamedPortSpec   @go(Spec)
	status?: #InstanceGroupNamedPortStatus @go(Status)
}

// InstanceGroupNamedPortList contains a list of InstanceGroupNamedPorts
#InstanceGroupNamedPortList: {
	items: [...#InstanceGroupNamedPort] @go(Items,[]InstanceGroupNamedPort)
}
