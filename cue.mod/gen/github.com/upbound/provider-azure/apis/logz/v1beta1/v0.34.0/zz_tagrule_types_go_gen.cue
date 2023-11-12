// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/logz/v1beta1

package v1beta1

#TagRuleObservation: {
	// The ID of the logz Tag Rule.
	id?: null | string @go(ID,*string)

	// The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created.
	logzMonitorId?: null | string @go(LogzMonitorID,*string)

	// Whether AAD logs should be sent to the Monitor resource?
	sendAadLogs?: null | bool @go(SendAADLogs,*bool)

	// Whether activity logs from Azure resources should be sent to the Monitor resource?
	sendActivityLogs?: null | bool @go(SendActivityLogs,*bool)

	// Whether subscription logs should be sent to the Monitor resource?
	sendSubscriptionLogs?: null | bool @go(SendSubscriptionLogs,*bool)

	// One or more (up to 10) tag_filter blocks as defined below.
	tagFilter?: [...#TagRuleTagFilterObservation] @go(TagFilter,[]TagRuleTagFilterObservation)
}

#TagRuleParameters: {
	// The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/logz/v1beta1.Monitor
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	logzMonitorId?: null | string @go(LogzMonitorID,*string)

	// Whether AAD logs should be sent to the Monitor resource?
	// +kubebuilder:validation:Optional
	sendAadLogs?: null | bool @go(SendAADLogs,*bool)

	// Whether activity logs from Azure resources should be sent to the Monitor resource?
	// +kubebuilder:validation:Optional
	sendActivityLogs?: null | bool @go(SendActivityLogs,*bool)

	// Whether subscription logs should be sent to the Monitor resource?
	// +kubebuilder:validation:Optional
	sendSubscriptionLogs?: null | bool @go(SendSubscriptionLogs,*bool)

	// One or more (up to 10) tag_filter blocks as defined below.
	// +kubebuilder:validation:Optional
	tagFilter?: [...#TagRuleTagFilterParameters] @go(TagFilter,[]TagRuleTagFilterParameters)
}

#TagRuleTagFilterObservation: {
	// The action for a filtering tag. Possible values are Include and Exclude is allowed. Note that the Exclude takes priority over the Include.
	action?: null | string @go(Action,*string)

	// The name of this tag_filter.
	name?: null | string @go(Name,*string)

	// The value of this tag_filter.
	value?: null | string @go(Value,*string)
}

#TagRuleTagFilterParameters: {
	// The action for a filtering tag. Possible values are Include and Exclude is allowed. Note that the Exclude takes priority over the Include.
	// +kubebuilder:validation:Required
	action?: null | string @go(Action,*string)

	// The name of this tag_filter.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The value of this tag_filter.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// TagRuleSpec defines the desired state of TagRule
#TagRuleSpec: {
	forProvider: #TagRuleParameters @go(ForProvider)
}

// TagRuleStatus defines the observed state of TagRule.
#TagRuleStatus: {
	atProvider?: #TagRuleObservation @go(AtProvider)
}

// TagRule is the Schema for the TagRules API. Manages a logz Tag Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#TagRule: {
	spec:    #TagRuleSpec   @go(Spec)
	status?: #TagRuleStatus @go(Status)
}

// TagRuleList contains a list of TagRules
#TagRuleList: {
	items: [...#TagRule] @go(Items,[]TagRule)
}
