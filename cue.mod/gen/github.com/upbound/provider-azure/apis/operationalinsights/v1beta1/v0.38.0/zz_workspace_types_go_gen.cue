// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/operationalinsights/v1beta1

package v1beta1

#WorkspaceInitParameters: {
	// Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true.
	allowResourceOnlyPermissions?: null | bool @go(AllowResourceOnlyPermissions,*bool)

	// Is Customer Managed Storage mandatory for query management?
	cmkForQueryForced?: null | bool @go(CmkForQueryForced,*bool)

	// The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted.
	dailyQuotaGb?: null | float64 @go(DailyQuotaGb,*float64)

	// Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true.
	internetIngestionEnabled?: null | bool @go(InternetIngestionEnabled,*bool)

	// Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true.
	internetQueryEnabled?: null | bool @go(InternetQueryEnabled,*bool)

	// Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false.
	localAuthenticationDisabled?: null | bool @go(LocalAuthenticationDisabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000.
	reservationCapacityInGbPerDay?: null | float64 @go(ReservationCapacityInGbPerDay,*float64)

	// The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730.
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)

	// Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WorkspaceObservation: {
	// Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true.
	allowResourceOnlyPermissions?: null | bool @go(AllowResourceOnlyPermissions,*bool)

	// Is Customer Managed Storage mandatory for query management?
	cmkForQueryForced?: null | bool @go(CmkForQueryForced,*bool)

	// The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted.
	dailyQuotaGb?: null | float64 @go(DailyQuotaGb,*float64)

	// The Log Analytics Workspace ID.
	id?: null | string @go(ID,*string)

	// Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true.
	internetIngestionEnabled?: null | bool @go(InternetIngestionEnabled,*bool)

	// Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true.
	internetQueryEnabled?: null | bool @go(InternetQueryEnabled,*bool)

	// Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false.
	localAuthenticationDisabled?: null | bool @go(LocalAuthenticationDisabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000.
	reservationCapacityInGbPerDay?: null | float64 @go(ReservationCapacityInGbPerDay,*float64)

	// The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730.
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)

	// Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Workspace (or Customer) ID for the Log Analytics Workspace.
	workspaceId?: null | string @go(WorkspaceID,*string)
}

#WorkspaceParameters: {
	// Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true.
	// +kubebuilder:validation:Optional
	allowResourceOnlyPermissions?: null | bool @go(AllowResourceOnlyPermissions,*bool)

	// Is Customer Managed Storage mandatory for query management?
	// +kubebuilder:validation:Optional
	cmkForQueryForced?: null | bool @go(CmkForQueryForced,*bool)

	// The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted.
	// +kubebuilder:validation:Optional
	dailyQuotaGb?: null | float64 @go(DailyQuotaGb,*float64)

	// Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true.
	// +kubebuilder:validation:Optional
	internetIngestionEnabled?: null | bool @go(InternetIngestionEnabled,*bool)

	// Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true.
	// +kubebuilder:validation:Optional
	internetQueryEnabled?: null | bool @go(InternetQueryEnabled,*bool)

	// Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false.
	// +kubebuilder:validation:Optional
	localAuthenticationDisabled?: null | bool @go(LocalAuthenticationDisabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000.
	// +kubebuilder:validation:Optional
	reservationCapacityInGbPerDay?: null | float64 @go(ReservationCapacityInGbPerDay,*float64)

	// The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730.
	// +kubebuilder:validation:Optional
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)

	// Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// WorkspaceSpec defines the desired state of Workspace
#WorkspaceSpec: {
	forProvider: #WorkspaceParameters @go(ForProvider)

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
	initProvider?: #WorkspaceInitParameters @go(InitProvider)
}

// WorkspaceStatus defines the observed state of Workspace.
#WorkspaceStatus: {
	atProvider?: #WorkspaceObservation @go(AtProvider)
}

// Workspace is the Schema for the Workspaces API. Manages a Log Analytics (formally Operational Insights) Workspace.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Workspace: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #WorkspaceSpec   @go(Spec)
	status?: #WorkspaceStatus @go(Status)
}

// WorkspaceList contains a list of Workspaces
#WorkspaceList: {
	items: [...#Workspace] @go(Items,[]Workspace)
}
