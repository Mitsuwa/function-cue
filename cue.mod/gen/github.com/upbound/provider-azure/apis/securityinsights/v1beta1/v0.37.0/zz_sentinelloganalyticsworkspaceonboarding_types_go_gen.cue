// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/securityinsights/v1beta1

package v1beta1

#SentinelLogAnalyticsWorkspaceOnboardingInitParameters: {
	// Specifies if the Workspace is using Customer managed key. Defaults to false. Changing this forces a new resource to be created.
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// The ID of the Security Insights Sentinel Onboarding States.
	workspaceId?: null | string @go(WorkspaceID,*string)
}

#SentinelLogAnalyticsWorkspaceOnboardingObservation: {
	// Specifies if the Workspace is using Customer managed key. Defaults to false. Changing this forces a new resource to be created.
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// The ID of the Security Insights Sentinel Onboarding States.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Resource Group where the Security Insights Sentinel Onboarding States should exist. Changing this forces the Log Analytics Workspace off the board and onboard again.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Security Insights Sentinel Onboarding States.
	workspaceId?: null | string @go(WorkspaceID,*string)

	// Specifies the Workspace Name. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
	workspaceName?: null | string @go(WorkspaceName,*string)
}

#SentinelLogAnalyticsWorkspaceOnboardingParameters: {
	// Specifies if the Workspace is using Customer managed key. Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// Specifies the name of the Resource Group where the Security Insights Sentinel Onboarding States should exist. Changing this forces the Log Analytics Workspace off the board and onboard again.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The ID of the Security Insights Sentinel Onboarding States.
	// +kubebuilder:validation:Optional
	workspaceId?: null | string @go(WorkspaceID,*string)

	// Specifies the Workspace Name. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/operationalinsights/v1beta1.Workspace
	// +kubebuilder:validation:Optional
	workspaceName?: null | string @go(WorkspaceName,*string)
}

// SentinelLogAnalyticsWorkspaceOnboardingSpec defines the desired state of SentinelLogAnalyticsWorkspaceOnboarding
#SentinelLogAnalyticsWorkspaceOnboardingSpec: {
	forProvider: #SentinelLogAnalyticsWorkspaceOnboardingParameters @go(ForProvider)

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
	initProvider?: #SentinelLogAnalyticsWorkspaceOnboardingInitParameters @go(InitProvider)
}

// SentinelLogAnalyticsWorkspaceOnboardingStatus defines the observed state of SentinelLogAnalyticsWorkspaceOnboarding.
#SentinelLogAnalyticsWorkspaceOnboardingStatus: {
	atProvider?: #SentinelLogAnalyticsWorkspaceOnboardingObservation @go(AtProvider)
}

// SentinelLogAnalyticsWorkspaceOnboarding is the Schema for the SentinelLogAnalyticsWorkspaceOnboardings API. Manages a Security Insights Sentinel Onboarding States.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SentinelLogAnalyticsWorkspaceOnboarding: {
	spec:    #SentinelLogAnalyticsWorkspaceOnboardingSpec   @go(Spec)
	status?: #SentinelLogAnalyticsWorkspaceOnboardingStatus @go(Status)
}

// SentinelLogAnalyticsWorkspaceOnboardingList contains a list of SentinelLogAnalyticsWorkspaceOnboardings
#SentinelLogAnalyticsWorkspaceOnboardingList: {
	items: [...#SentinelLogAnalyticsWorkspaceOnboarding] @go(Items,[]SentinelLogAnalyticsWorkspaceOnboarding)
}
