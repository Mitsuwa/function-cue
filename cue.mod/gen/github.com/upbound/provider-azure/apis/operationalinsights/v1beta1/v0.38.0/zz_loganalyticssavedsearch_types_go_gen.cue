// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/operationalinsights/v1beta1

package v1beta1

#LogAnalyticsSavedSearchInitParameters: {
	// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
	category?: null | string @go(Category,*string)

	// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
	displayName?: null | string @go(DisplayName,*string)

	// The function alias if the query serves as a function. Changing this forces a new resource to be created.
	functionAlias?: null | string @go(FunctionAlias,*string)

	// The function parameters if the query serves as a function. Changing this forces a new resource to be created.
	functionParameters?: [...null | string] @go(FunctionParameters,[]*string)

	// The query expression for the saved search. Changing this forces a new resource to be created.
	query?: null | string @go(Query,*string)

	// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#LogAnalyticsSavedSearchObservation: {
	// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
	category?: null | string @go(Category,*string)

	// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
	displayName?: null | string @go(DisplayName,*string)

	// The function alias if the query serves as a function. Changing this forces a new resource to be created.
	functionAlias?: null | string @go(FunctionAlias,*string)

	// The function parameters if the query serves as a function. Changing this forces a new resource to be created.
	functionParameters?: [...null | string] @go(FunctionParameters,[]*string)

	// The Log Analytics Saved Search ID.
	id?: null | string @go(ID,*string)

	// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The query expression for the saved search. Changing this forces a new resource to be created.
	query?: null | string @go(Query,*string)

	// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#LogAnalyticsSavedSearchParameters: {
	// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	category?: null | string @go(Category,*string)

	// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The function alias if the query serves as a function. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	functionAlias?: null | string @go(FunctionAlias,*string)

	// The function parameters if the query serves as a function. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	functionParameters?: [...null | string] @go(FunctionParameters,[]*string)

	// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/operationalinsights/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The query expression for the saved search. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	query?: null | string @go(Query,*string)

	// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// LogAnalyticsSavedSearchSpec defines the desired state of LogAnalyticsSavedSearch
#LogAnalyticsSavedSearchSpec: {
	forProvider: #LogAnalyticsSavedSearchParameters @go(ForProvider)

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
	initProvider?: #LogAnalyticsSavedSearchInitParameters @go(InitProvider)
}

// LogAnalyticsSavedSearchStatus defines the observed state of LogAnalyticsSavedSearch.
#LogAnalyticsSavedSearchStatus: {
	atProvider?: #LogAnalyticsSavedSearchObservation @go(AtProvider)
}

// LogAnalyticsSavedSearch is the Schema for the LogAnalyticsSavedSearchs API. Manages a Log Analytics (formally Operational Insights) Saved Search.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LogAnalyticsSavedSearch: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.category) || (has(self.initProvider) && has(self.initProvider.category))",message="spec.forProvider.category is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.query) || (has(self.initProvider) && has(self.initProvider.query))",message="spec.forProvider.query is a required parameter"
	spec:    #LogAnalyticsSavedSearchSpec   @go(Spec)
	status?: #LogAnalyticsSavedSearchStatus @go(Status)
}

// LogAnalyticsSavedSearchList contains a list of LogAnalyticsSavedSearchs
#LogAnalyticsSavedSearchList: {
	items: [...#LogAnalyticsSavedSearch] @go(Items,[]LogAnalyticsSavedSearch)
}
