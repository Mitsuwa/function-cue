// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/security/v1beta1

package v1beta1

#SecurityCenterWorkspaceInitParameters: {
	// The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
	scope?: null | string @go(Scope,*string)
}

#SecurityCenterWorkspaceObservation: {
	// The Security Center Workspace ID.
	id?: null | string @go(ID,*string)

	// The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
	scope?: null | string @go(Scope,*string)

	// The ID of the Log Analytics Workspace to save the data in.
	workspaceId?: null | string @go(WorkspaceID,*string)
}

#SecurityCenterWorkspaceParameters: {
	// The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)

	// The ID of the Log Analytics Workspace to save the data in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/operationalinsights/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	workspaceId?: null | string @go(WorkspaceID,*string)
}

// SecurityCenterWorkspaceSpec defines the desired state of SecurityCenterWorkspace
#SecurityCenterWorkspaceSpec: {
	forProvider: #SecurityCenterWorkspaceParameters @go(ForProvider)

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
	initProvider?: #SecurityCenterWorkspaceInitParameters @go(InitProvider)
}

// SecurityCenterWorkspaceStatus defines the observed state of SecurityCenterWorkspace.
#SecurityCenterWorkspaceStatus: {
	atProvider?: #SecurityCenterWorkspaceObservation @go(AtProvider)
}

// SecurityCenterWorkspace is the Schema for the SecurityCenterWorkspaces API. Manages the subscription's Security Center Workspace.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SecurityCenterWorkspace: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.scope) || has(self.initProvider.scope)",message="scope is a required parameter"
	spec:    #SecurityCenterWorkspaceSpec   @go(Spec)
	status?: #SecurityCenterWorkspaceStatus @go(Status)
}

// SecurityCenterWorkspaceList contains a list of SecurityCenterWorkspaces
#SecurityCenterWorkspaceList: {
	items: [...#SecurityCenterWorkspace] @go(Items,[]SecurityCenterWorkspace)
}
