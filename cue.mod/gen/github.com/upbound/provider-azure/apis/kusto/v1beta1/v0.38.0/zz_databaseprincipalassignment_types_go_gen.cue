// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/kusto/v1beta1

package v1beta1

#DatabasePrincipalAssignmentInitParameters: {
	// The object id of the principal. Changing this forces a new resource to be created.
	principalId?: null | string @go(PrincipalID,*string)

	// The type of the principal. Valid values include App, Group, User. Changing this forces a new resource to be created.
	principalType?: null | string @go(PrincipalType,*string)

	// The database role assigned to the principal. Valid values include Admin, Ingestor, Monitor, UnrestrictedViewer, User and Viewer. Changing this forces a new resource to be created.
	role?: null | string @go(Role,*string)

	// The tenant id in which the principal resides. Changing this forces a new resource to be created.
	tenantId?: null | string @go(TenantID,*string)
}

#DatabasePrincipalAssignmentObservation: {
	// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
	clusterName?: null | string @go(ClusterName,*string)

	// The name of the database in which to create the resource. Changing this forces a new resource to be created.
	databaseName?: null | string @go(DatabaseName,*string)

	// The ID of the Kusto Database Principal Assignment.
	id?: null | string @go(ID,*string)

	// The object id of the principal. Changing this forces a new resource to be created.
	principalId?: null | string @go(PrincipalID,*string)

	// The name of the principal.
	principalName?: null | string @go(PrincipalName,*string)

	// The type of the principal. Valid values include App, Group, User. Changing this forces a new resource to be created.
	principalType?: null | string @go(PrincipalType,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The database role assigned to the principal. Valid values include Admin, Ingestor, Monitor, UnrestrictedViewer, User and Viewer. Changing this forces a new resource to be created.
	role?: null | string @go(Role,*string)

	// The tenant id in which the principal resides. Changing this forces a new resource to be created.
	tenantId?: null | string @go(TenantID,*string)

	// The name of the tenant.
	tenantName?: null | string @go(TenantName,*string)
}

#DatabasePrincipalAssignmentParameters: {
	// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Cluster
	// +kubebuilder:validation:Optional
	clusterName?: null | string @go(ClusterName,*string)

	// The name of the database in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Database
	// +kubebuilder:validation:Optional
	databaseName?: null | string @go(DatabaseName,*string)

	// The object id of the principal. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	principalId?: null | string @go(PrincipalID,*string)

	// The type of the principal. Valid values include App, Group, User. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	principalType?: null | string @go(PrincipalType,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The database role assigned to the principal. Valid values include Admin, Ingestor, Monitor, UnrestrictedViewer, User and Viewer. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// The tenant id in which the principal resides. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tenantId?: null | string @go(TenantID,*string)
}

// DatabasePrincipalAssignmentSpec defines the desired state of DatabasePrincipalAssignment
#DatabasePrincipalAssignmentSpec: {
	forProvider: #DatabasePrincipalAssignmentParameters @go(ForProvider)

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
	initProvider?: #DatabasePrincipalAssignmentInitParameters @go(InitProvider)
}

// DatabasePrincipalAssignmentStatus defines the observed state of DatabasePrincipalAssignment.
#DatabasePrincipalAssignmentStatus: {
	atProvider?: #DatabasePrincipalAssignmentObservation @go(AtProvider)
}

// DatabasePrincipalAssignment is the Schema for the DatabasePrincipalAssignments API. Manages a Kusto / Data Explorer Database Principal Assignment
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DatabasePrincipalAssignment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.principalId) || (has(self.initProvider) && has(self.initProvider.principalId))",message="spec.forProvider.principalId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.principalType) || (has(self.initProvider) && has(self.initProvider.principalType))",message="spec.forProvider.principalType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || (has(self.initProvider) && has(self.initProvider.role))",message="spec.forProvider.role is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tenantId) || (has(self.initProvider) && has(self.initProvider.tenantId))",message="spec.forProvider.tenantId is a required parameter"
	spec:    #DatabasePrincipalAssignmentSpec   @go(Spec)
	status?: #DatabasePrincipalAssignmentStatus @go(Status)
}

// DatabasePrincipalAssignmentList contains a list of DatabasePrincipalAssignments
#DatabasePrincipalAssignmentList: {
	items: [...#DatabasePrincipalAssignment] @go(Items,[]DatabasePrincipalAssignment)
}
