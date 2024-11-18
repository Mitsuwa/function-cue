// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/alertsmanagement/v1beta1

package v1beta1

#AlertContextObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#AlertContextParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#AlertRuleIDObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#AlertRuleIDParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#ConditionObservation: {
	// A alert_context block as defined below.
	alertContext?: [...#AlertContextObservation] @go(AlertContext,[]AlertContextObservation)

	// A alert_rule_id block as defined below.
	alertRuleId?: [...#AlertRuleIDObservation] @go(AlertRuleID,[]AlertRuleIDObservation)

	// A description block as defined below.
	description?: [...#DescriptionObservation] @go(Description,[]DescriptionObservation)

	// A monitor block as defined below.
	monitor?: [...#MonitorObservation] @go(Monitor,[]MonitorObservation)

	// A monitor_service as block defined below.
	monitorService?: [...#MonitorServiceObservation] @go(MonitorService,[]MonitorServiceObservation)

	// A severity block as defined below.
	severity?: [...#SeverityObservation] @go(Severity,[]SeverityObservation)

	// A target_resource_type block as defined below.
	targetResourceType?: [...#TargetResourceTypeObservation] @go(TargetResourceType,[]TargetResourceTypeObservation)
}

#ConditionParameters: {
	// A alert_context block as defined below.
	// +kubebuilder:validation:Optional
	alertContext?: [...#AlertContextParameters] @go(AlertContext,[]AlertContextParameters)

	// A alert_rule_id block as defined below.
	// +kubebuilder:validation:Optional
	alertRuleId?: [...#AlertRuleIDParameters] @go(AlertRuleID,[]AlertRuleIDParameters)

	// A description block as defined below.
	// +kubebuilder:validation:Optional
	description?: [...#DescriptionParameters] @go(Description,[]DescriptionParameters)

	// A monitor block as defined below.
	// +kubebuilder:validation:Optional
	monitor?: [...#MonitorParameters] @go(Monitor,[]MonitorParameters)

	// A monitor_service as block defined below.
	// +kubebuilder:validation:Optional
	monitorService?: [...#MonitorServiceParameters] @go(MonitorService,[]MonitorServiceParameters)

	// A severity block as defined below.
	// +kubebuilder:validation:Optional
	severity?: [...#SeverityParameters] @go(Severity,[]SeverityParameters)

	// A target_resource_type block as defined below.
	// +kubebuilder:validation:Optional
	targetResourceType?: [...#TargetResourceTypeParameters] @go(TargetResourceType,[]TargetResourceTypeParameters)
}

#DescriptionObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#DescriptionParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#MonitorActionRuleActionGroupObservation: {
	// Specifies the resource id of monitor action group.
	actionGroupId?: null | string @go(ActionGroupID,*string)

	// A condition block as defined below.
	condition?: [...#ConditionObservation] @go(Condition,[]ConditionObservation)

	// Specifies a description for the Action Rule.
	description?: null | string @go(Description,*string)

	// Is the Action Rule enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Monitor Action Rule.
	id?: null | string @go(ID,*string)

	// Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A scope block as defined below.
	scope?: [...#ScopeObservation] @go(Scope,[]ScopeObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorActionRuleActionGroupParameters: {
	// Specifies the resource id of monitor action group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.MonitorActionGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	actionGroupId?: null | string @go(ActionGroupID,*string)

	// A condition block as defined below.
	// +kubebuilder:validation:Optional
	condition?: [...#ConditionParameters] @go(Condition,[]ConditionParameters)

	// Specifies a description for the Action Rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Is the Action Rule enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A scope block as defined below.
	// +kubebuilder:validation:Optional
	scope?: [...#ScopeParameters] @go(Scope,[]ScopeParameters)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#MonitorServiceObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#MonitorServiceParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#ScopeObservation: {
	// A list of resource IDs of the given scope type which will be the target of action rule.
	resourceIds?: [...null | string] @go(ResourceIds,[]*string)

	// Specifies the type of target scope. Possible values are ResourceGroup and Resource.
	type?: null | string @go(Type,*string)
}

#ScopeParameters: {
	// A list of resource IDs of the given scope type which will be the target of action rule.
	// +kubebuilder:validation:Required
	resourceIds: [...null | string] @go(ResourceIds,[]*string)

	// Specifies the type of target scope. Possible values are ResourceGroup and Resource.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#SeverityObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#SeverityParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

#TargetResourceTypeObservation: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	values?: [...null | string] @go(Values,[]*string)
}

#TargetResourceTypeParameters: {
	// The operator for a given condition. Possible values are Equals and NotEquals.
	// +kubebuilder:validation:Required
	operator?: null | string @go(Operator,*string)

	// A list of values to match for a given condition. The values should be valid resource types.
	// +kubebuilder:validation:Required
	values: [...null | string] @go(Values,[]*string)
}

// MonitorActionRuleActionGroupSpec defines the desired state of MonitorActionRuleActionGroup
#MonitorActionRuleActionGroupSpec: {
	forProvider: #MonitorActionRuleActionGroupParameters @go(ForProvider)
}

// MonitorActionRuleActionGroupStatus defines the observed state of MonitorActionRuleActionGroup.
#MonitorActionRuleActionGroupStatus: {
	atProvider?: #MonitorActionRuleActionGroupObservation @go(AtProvider)
}

// MonitorActionRuleActionGroup is the Schema for the MonitorActionRuleActionGroups API. Manages an Monitor Action Rule which type is action group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorActionRuleActionGroup: {
	spec:    #MonitorActionRuleActionGroupSpec   @go(Spec)
	status?: #MonitorActionRuleActionGroupStatus @go(Status)
}

// MonitorActionRuleActionGroupList contains a list of MonitorActionRuleActionGroups
#MonitorActionRuleActionGroupList: {
	items: [...#MonitorActionRuleActionGroup] @go(Items,[]MonitorActionRuleActionGroup)
}
