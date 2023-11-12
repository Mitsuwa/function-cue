// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#WorkspaceAADAdminInitParameters: {
	// The login name of the Azure AD Administrator of this Synapse Workspace.
	login?: null | string @go(Login,*string)

	// The object id of the Azure AD Administrator of this Synapse Workspace.
	objectId?: null | string @go(ObjectID,*string)

	// The tenant id of the Azure AD Administrator of this Synapse Workspace.
	tenantId?: null | string @go(TenantID,*string)
}

#WorkspaceAADAdminObservation: {
	id?: null | string @go(ID,*string)

	// The login name of the Azure AD Administrator of this Synapse Workspace.
	login?: null | string @go(Login,*string)

	// The object id of the Azure AD Administrator of this Synapse Workspace.
	objectId?: null | string @go(ObjectID,*string)

	// The ID of the Synapse Workspace where the Azure AD Administrator should be configured.
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The tenant id of the Azure AD Administrator of this Synapse Workspace.
	tenantId?: null | string @go(TenantID,*string)
}

#WorkspaceAADAdminParameters: {
	// The login name of the Azure AD Administrator of this Synapse Workspace.
	// +kubebuilder:validation:Optional
	login?: null | string @go(Login,*string)

	// The object id of the Azure AD Administrator of this Synapse Workspace.
	// +kubebuilder:validation:Optional
	objectId?: null | string @go(ObjectID,*string)

	// The ID of the Synapse Workspace where the Azure AD Administrator should be configured.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The tenant id of the Azure AD Administrator of this Synapse Workspace.
	// +kubebuilder:validation:Optional
	tenantId?: null | string @go(TenantID,*string)
}

// WorkspaceAADAdminSpec defines the desired state of WorkspaceAADAdmin
#WorkspaceAADAdminSpec: {
	forProvider: #WorkspaceAADAdminParameters @go(ForProvider)

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
	initProvider?: #WorkspaceAADAdminInitParameters @go(InitProvider)
}

// WorkspaceAADAdminStatus defines the observed state of WorkspaceAADAdmin.
#WorkspaceAADAdminStatus: {
	atProvider?: #WorkspaceAADAdminObservation @go(AtProvider)
}

// WorkspaceAADAdmin is the Schema for the WorkspaceAADAdmins API. Manages Synapse Workspace AAD Admin
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#WorkspaceAADAdmin: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.login) || has(self.initProvider.login)",message="login is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.objectId) || has(self.initProvider.objectId)",message="objectId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tenantId) || has(self.initProvider.tenantId)",message="tenantId is a required parameter"
	spec:    #WorkspaceAADAdminSpec   @go(Spec)
	status?: #WorkspaceAADAdminStatus @go(Status)
}

// WorkspaceAADAdminList contains a list of WorkspaceAADAdmins
#WorkspaceAADAdminList: {
	items: [...#WorkspaceAADAdmin] @go(Items,[]WorkspaceAADAdmin)
}
