// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#RoleAssignmentInitParameters: {
	// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
	principalId?: null | string @go(PrincipalID,*string)

	// The Role Name of the Synapse Built-In Role. Changing this forces a new resource to be created.
	roleName?: null | string @go(RoleName,*string)

	// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
	synapseSparkPoolId?: null | string @go(SynapseSparkPoolID,*string)
}

#RoleAssignmentObservation: {
	// The Synapse Role Assignment ID.
	id?: null | string @go(ID,*string)

	// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
	principalId?: null | string @go(PrincipalID,*string)

	// The Role Name of the Synapse Built-In Role. Changing this forces a new resource to be created.
	roleName?: null | string @go(RoleName,*string)

	// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
	synapseSparkPoolId?: null | string @go(SynapseSparkPoolID,*string)

	// The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)
}

#RoleAssignmentParameters: {
	// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	principalId?: null | string @go(PrincipalID,*string)

	// The Role Name of the Synapse Built-In Role. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	roleName?: null | string @go(RoleName,*string)

	// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	synapseSparkPoolId?: null | string @go(SynapseSparkPoolID,*string)

	// The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)
}

// RoleAssignmentSpec defines the desired state of RoleAssignment
#RoleAssignmentSpec: {
	forProvider: #RoleAssignmentParameters @go(ForProvider)

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
	initProvider?: #RoleAssignmentInitParameters @go(InitProvider)
}

// RoleAssignmentStatus defines the observed state of RoleAssignment.
#RoleAssignmentStatus: {
	atProvider?: #RoleAssignmentObservation @go(AtProvider)
}

// RoleAssignment is the Schema for the RoleAssignments API. Manages a Synapse Role Assignment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#RoleAssignment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.principalId) || has(self.initProvider.principalId)",message="principalId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.roleName) || has(self.initProvider.roleName)",message="roleName is a required parameter"
	spec:    #RoleAssignmentSpec   @go(Spec)
	status?: #RoleAssignmentStatus @go(Status)
}

// RoleAssignmentList contains a list of RoleAssignments
#RoleAssignmentList: {
	items: [...#RoleAssignment] @go(Items,[]RoleAssignment)
}
