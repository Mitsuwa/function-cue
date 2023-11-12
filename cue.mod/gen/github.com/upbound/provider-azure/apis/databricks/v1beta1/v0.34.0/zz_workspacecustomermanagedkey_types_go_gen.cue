// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/databricks/v1beta1

package v1beta1

#WorkspaceCustomerManagedKeyObservation: {
	// The ID of the Databricks Workspace.
	id?: null | string @go(ID,*string)

	// The ID of the Key Vault.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)

	// The ID of the Databricks Workspace..
	workspaceId?: null | string @go(WorkspaceID,*string)
}

#WorkspaceCustomerManagedKeyParameters: {
	// The ID of the Key Vault.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/keyvault/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)

	// The ID of the Databricks Workspace..
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/databricks/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	workspaceId?: null | string @go(WorkspaceID,*string)
}

// WorkspaceCustomerManagedKeySpec defines the desired state of WorkspaceCustomerManagedKey
#WorkspaceCustomerManagedKeySpec: {
	forProvider: #WorkspaceCustomerManagedKeyParameters @go(ForProvider)
}

// WorkspaceCustomerManagedKeyStatus defines the observed state of WorkspaceCustomerManagedKey.
#WorkspaceCustomerManagedKeyStatus: {
	atProvider?: #WorkspaceCustomerManagedKeyObservation @go(AtProvider)
}

// WorkspaceCustomerManagedKey is the Schema for the WorkspaceCustomerManagedKeys API. Manages a Customer Managed Key for a Databricks Workspace
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#WorkspaceCustomerManagedKey: {
	spec:    #WorkspaceCustomerManagedKeySpec   @go(Spec)
	status?: #WorkspaceCustomerManagedKeyStatus @go(Status)
}

// WorkspaceCustomerManagedKeyList contains a list of WorkspaceCustomerManagedKeys
#WorkspaceCustomerManagedKeyList: {
	items: [...#WorkspaceCustomerManagedKey] @go(Items,[]WorkspaceCustomerManagedKey)
}
