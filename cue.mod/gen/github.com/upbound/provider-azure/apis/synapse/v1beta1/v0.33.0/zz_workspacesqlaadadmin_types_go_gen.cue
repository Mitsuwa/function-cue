// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#WorkspaceSQLAADAdminObservation: {
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

#WorkspaceSQLAADAdminParameters: {
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

// WorkspaceSQLAADAdminSpec defines the desired state of WorkspaceSQLAADAdmin
#WorkspaceSQLAADAdminSpec: {
	forProvider: #WorkspaceSQLAADAdminParameters @go(ForProvider)
}

// WorkspaceSQLAADAdminStatus defines the observed state of WorkspaceSQLAADAdmin.
#WorkspaceSQLAADAdminStatus: {
	atProvider?: #WorkspaceSQLAADAdminObservation @go(AtProvider)
}

// WorkspaceSQLAADAdmin is the Schema for the WorkspaceSQLAADAdmins API. Manages Synapse Workspace AAD Admin
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#WorkspaceSQLAADAdmin: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.login)",message="login is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.objectId)",message="objectId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.tenantId)",message="tenantId is a required parameter"
	spec:    #WorkspaceSQLAADAdminSpec   @go(Spec)
	status?: #WorkspaceSQLAADAdminStatus @go(Status)
}

// WorkspaceSQLAADAdminList contains a list of WorkspaceSQLAADAdmins
#WorkspaceSQLAADAdminList: {
	items: [...#WorkspaceSQLAADAdmin] @go(Items,[]WorkspaceSQLAADAdmin)
}
