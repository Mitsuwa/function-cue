// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/operationalinsights/v1beta1

package v1beta1

#LogAnalyticsDataExportRuleInitParameters: {
	// Is this Log Analytics Data Export Rule enabled? Possible values include true or false. Defaults to false.
	enabled?: null | bool @go(Enabled,*bool)

	// A list of table names to export to the destination resource, for example: ["Heartbeat", "SecurityEvent"].
	tableNames?: [...null | string] @go(TableNames,[]*string)
}

#LogAnalyticsDataExportRuleObservation: {
	// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
	destinationResourceId?: null | string @go(DestinationResourceID,*string)

	// Is this Log Analytics Data Export Rule enabled? Possible values include true or false. Defaults to false.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the created Data Export Rule.
	exportRuleId?: null | string @go(ExportRuleID,*string)

	// The ID of the Log Analytics Data Export Rule.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A list of table names to export to the destination resource, for example: ["Heartbeat", "SecurityEvent"].
	tableNames?: [...null | string] @go(TableNames,[]*string)

	// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
	workspaceResourceId?: null | string @go(WorkspaceResourceID,*string)
}

#LogAnalyticsDataExportRuleParameters: {
	// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	destinationResourceId?: null | string @go(DestinationResourceID,*string)

	// Is this Log Analytics Data Export Rule enabled? Possible values include true or false. Defaults to false.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A list of table names to export to the destination resource, for example: ["Heartbeat", "SecurityEvent"].
	// +kubebuilder:validation:Optional
	tableNames?: [...null | string] @go(TableNames,[]*string)

	// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/operationalinsights/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	workspaceResourceId?: null | string @go(WorkspaceResourceID,*string)
}

// LogAnalyticsDataExportRuleSpec defines the desired state of LogAnalyticsDataExportRule
#LogAnalyticsDataExportRuleSpec: {
	forProvider: #LogAnalyticsDataExportRuleParameters @go(ForProvider)

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
	initProvider?: #LogAnalyticsDataExportRuleInitParameters @go(InitProvider)
}

// LogAnalyticsDataExportRuleStatus defines the observed state of LogAnalyticsDataExportRule.
#LogAnalyticsDataExportRuleStatus: {
	atProvider?: #LogAnalyticsDataExportRuleObservation @go(AtProvider)
}

// LogAnalyticsDataExportRule is the Schema for the LogAnalyticsDataExportRules API. Manages a log analytics Data Export Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LogAnalyticsDataExportRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tableNames) || (has(self.initProvider) && has(self.initProvider.tableNames))",message="spec.forProvider.tableNames is a required parameter"
	spec:    #LogAnalyticsDataExportRuleSpec   @go(Spec)
	status?: #LogAnalyticsDataExportRuleStatus @go(Status)
}

// LogAnalyticsDataExportRuleList contains a list of LogAnalyticsDataExportRules
#LogAnalyticsDataExportRuleList: {
	items: [...#LogAnalyticsDataExportRule] @go(Items,[]LogAnalyticsDataExportRule)
}
