// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#ApplicationInsightsAPIKeyInitParameters: {
	// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the list of read permissions granted to the API key. Valid values are agentconfig, aggregate, api, draft, extendqueries, search. Please note these values are case sensitive. Changing this forces a new resource to be created.
	readPermissions?: [...null | string] @go(ReadPermissions,[]*string)

	// Specifies the list of write permissions granted to the API key. Valid values are annotations. Please note these values are case sensitive. Changing this forces a new resource to be created.
	writePermissions?: [...null | string] @go(WritePermissions,[]*string)
}

#ApplicationInsightsAPIKeyObservation: {
	// The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
	applicationInsightsId?: null | string @go(ApplicationInsightsID,*string)

	// The ID of the Application Insights API key.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the list of read permissions granted to the API key. Valid values are agentconfig, aggregate, api, draft, extendqueries, search. Please note these values are case sensitive. Changing this forces a new resource to be created.
	readPermissions?: [...null | string] @go(ReadPermissions,[]*string)

	// Specifies the list of write permissions granted to the API key. Valid values are annotations. Please note these values are case sensitive. Changing this forces a new resource to be created.
	writePermissions?: [...null | string] @go(WritePermissions,[]*string)
}

#ApplicationInsightsAPIKeyParameters: {
	// The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	applicationInsightsId?: null | string @go(ApplicationInsightsID,*string)

	// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the list of read permissions granted to the API key. Valid values are agentconfig, aggregate, api, draft, extendqueries, search. Please note these values are case sensitive. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	readPermissions?: [...null | string] @go(ReadPermissions,[]*string)

	// Specifies the list of write permissions granted to the API key. Valid values are annotations. Please note these values are case sensitive. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	writePermissions?: [...null | string] @go(WritePermissions,[]*string)
}

// ApplicationInsightsAPIKeySpec defines the desired state of ApplicationInsightsAPIKey
#ApplicationInsightsAPIKeySpec: {
	forProvider: #ApplicationInsightsAPIKeyParameters @go(ForProvider)

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
	initProvider?: #ApplicationInsightsAPIKeyInitParameters @go(InitProvider)
}

// ApplicationInsightsAPIKeyStatus defines the observed state of ApplicationInsightsAPIKey.
#ApplicationInsightsAPIKeyStatus: {
	atProvider?: #ApplicationInsightsAPIKeyObservation @go(AtProvider)
}

// ApplicationInsightsAPIKey is the Schema for the ApplicationInsightsAPIKeys API. Manages an Application Insights API key.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ApplicationInsightsAPIKey: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #ApplicationInsightsAPIKeySpec   @go(Spec)
	status?: #ApplicationInsightsAPIKeyStatus @go(Status)
}

// ApplicationInsightsAPIKeyList contains a list of ApplicationInsightsAPIKeys
#ApplicationInsightsAPIKeyList: {
	items: [...#ApplicationInsightsAPIKey] @go(Items,[]ApplicationInsightsAPIKey)
}
