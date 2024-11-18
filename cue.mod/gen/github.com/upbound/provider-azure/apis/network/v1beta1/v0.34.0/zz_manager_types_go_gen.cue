// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#CrossTenantScopesObservation: {
	// List of management groups.
	managementGroups?: [...null | string] @go(ManagementGroups,[]*string)

	// List of subscriptions.
	subscriptions?: [...null | string] @go(Subscriptions,[]*string)

	// Tenant ID.
	tenantId?: null | string @go(TenantID,*string)
}

#CrossTenantScopesParameters: {
}

#ManagerObservation: {
	// A cross_tenant_scopes block as defined below.
	crossTenantScopes?: [...#CrossTenantScopesObservation] @go(CrossTenantScopes,[]CrossTenantScopesObservation)

	// A description of the network manager.
	description?: null | string @go(Description,*string)

	// The ID of the Network Managers.
	id?: null | string @go(ID,*string)

	// Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A scope block as defined below.
	scope?: [...#ScopeObservation] @go(Scope,[]ScopeObservation)

	// A list of configuration deployment type. Possible values are Connectivity and SecurityAdmin, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager.
	scopeAccesses?: [...null | string] @go(ScopeAccesses,[]*string)

	// A mapping of tags which should be assigned to the Network Managers.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ManagerParameters: {
	// A description of the network manager.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A scope block as defined below.
	// +kubebuilder:validation:Optional
	scope?: [...#ScopeParameters] @go(Scope,[]ScopeParameters)

	// A list of configuration deployment type. Possible values are Connectivity and SecurityAdmin, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager.
	// +kubebuilder:validation:Optional
	scopeAccesses?: [...null | string] @go(ScopeAccesses,[]*string)

	// A mapping of tags which should be assigned to the Network Managers.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ScopeObservation: {
	// A list of management group IDs.
	managementGroupIds?: [...null | string] @go(ManagementGroupIds,[]*string)

	// A list of subscription IDs.
	subscriptionIds?: [...null | string] @go(SubscriptionIds,[]*string)
}

#ScopeParameters: {
	// A list of management group IDs.
	// +kubebuilder:validation:Optional
	managementGroupIds?: [...null | string] @go(ManagementGroupIds,[]*string)

	// A list of subscription IDs.
	// +kubebuilder:validation:Optional
	subscriptionIds?: [...null | string] @go(SubscriptionIds,[]*string)
}

// ManagerSpec defines the desired state of Manager
#ManagerSpec: {
	forProvider: #ManagerParameters @go(ForProvider)
}

// ManagerStatus defines the observed state of Manager.
#ManagerStatus: {
	atProvider?: #ManagerObservation @go(AtProvider)
}

// Manager is the Schema for the Managers API. Manages a Network Managers.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Manager: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.scope)",message="scope is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.scopeAccesses)",message="scopeAccesses is a required parameter"
	spec:    #ManagerSpec   @go(Spec)
	status?: #ManagerStatus @go(Status)
}

// ManagerList contains a list of Managers
#ManagerList: {
	items: [...#Manager] @go(Items,[]Manager)
}
