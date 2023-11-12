// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#RouteFilterObservation: {
	// The ID of the Route Filter.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A rule block as defined below.
	rule?: [...#RouteFilterRuleObservation] @go(Rule,[]RouteFilterRuleObservation)

	// A mapping of tags which should be assigned to the Route Filter.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#RouteFilterParameters: {
	// The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A rule block as defined below.
	// +kubebuilder:validation:Optional
	rule?: [...#RouteFilterRuleParameters] @go(Rule,[]RouteFilterRuleParameters)

	// A mapping of tags which should be assigned to the Route Filter.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#RouteFilterRuleObservation: {
	// The access type of the rule. The only possible value is Allow.
	access?: null | string @go(Access,*string)

	// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
	communities?: [...null | string] @go(Communities,[]*string)

	// The name of the route filter rule.
	name?: null | string @go(Name,*string)

	// The rule type of the rule. The only possible value is Community.
	ruleType?: null | string @go(RuleType,*string)
}

#RouteFilterRuleParameters: {
	// The access type of the rule. The only possible value is Allow.
	// +kubebuilder:validation:Optional
	access?: null | string @go(Access,*string)

	// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
	// +kubebuilder:validation:Optional
	communities?: [...null | string] @go(Communities,[]*string)

	// The name of the route filter rule.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The rule type of the rule. The only possible value is Community.
	// +kubebuilder:validation:Optional
	ruleType?: null | string @go(RuleType,*string)
}

// RouteFilterSpec defines the desired state of RouteFilter
#RouteFilterSpec: {
	forProvider: #RouteFilterParameters @go(ForProvider)
}

// RouteFilterStatus defines the observed state of RouteFilter.
#RouteFilterStatus: {
	atProvider?: #RouteFilterObservation @go(AtProvider)
}

// RouteFilter is the Schema for the RouteFilters API. Manages a Route Filter.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#RouteFilter: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #RouteFilterSpec   @go(Spec)
	status?: #RouteFilterStatus @go(Status)
}

// RouteFilterList contains a list of RouteFilters
#RouteFilterList: {
	items: [...#RouteFilter] @go(Items,[]RouteFilter)
}
