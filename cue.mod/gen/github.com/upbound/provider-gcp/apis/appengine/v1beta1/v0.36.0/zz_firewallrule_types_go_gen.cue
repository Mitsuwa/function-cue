// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/appengine/v1beta1

package v1beta1

#FirewallRuleInitParameters: {
	// The action to take if this rule matches.
	// Possible values are: UNSPECIFIED_ACTION, ALLOW, DENY.
	action?: null | string @go(Action,*string)

	// An optional string description of this rule.
	description?: null | string @go(Description,*string)

	// A positive integer that defines the order of rule evaluation.
	// Rules with the lowest priority are evaluated first.
	// A default rule at priority Int32.MaxValue matches all IPv4 and
	// IPv6 traffic when no previous rule matches. Only the action of
	// this rule can be modified by the user.
	priority?: null | float64 @go(Priority,*float64)

	// IP address or range, defined using CIDR notation, of requests that this rule applies to.
	sourceRange?: null | string @go(SourceRange,*string)
}

#FirewallRuleObservation: {
	// The action to take if this rule matches.
	// Possible values are: UNSPECIFIED_ACTION, ALLOW, DENY.
	action?: null | string @go(Action,*string)

	// An optional string description of this rule.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format apps/{{project}}/firewall/ingressRules/{{priority}}
	id?: null | string @go(ID,*string)

	// A positive integer that defines the order of rule evaluation.
	// Rules with the lowest priority are evaluated first.
	// A default rule at priority Int32.MaxValue matches all IPv4 and
	// IPv6 traffic when no previous rule matches. Only the action of
	// this rule can be modified by the user.
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// IP address or range, defined using CIDR notation, of requests that this rule applies to.
	sourceRange?: null | string @go(SourceRange,*string)
}

#FirewallRuleParameters: {
	// The action to take if this rule matches.
	// Possible values are: UNSPECIFIED_ACTION, ALLOW, DENY.
	// +kubebuilder:validation:Optional
	action?: null | string @go(Action,*string)

	// An optional string description of this rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A positive integer that defines the order of rule evaluation.
	// Rules with the lowest priority are evaluated first.
	// A default rule at priority Int32.MaxValue matches all IPv4 and
	// IPv6 traffic when no previous rule matches. Only the action of
	// this rule can be modified by the user.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/appengine/v1beta1.Application
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("project",false)
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// IP address or range, defined using CIDR notation, of requests that this rule applies to.
	// +kubebuilder:validation:Optional
	sourceRange?: null | string @go(SourceRange,*string)
}

// FirewallRuleSpec defines the desired state of FirewallRule
#FirewallRuleSpec: {
	forProvider: #FirewallRuleParameters @go(ForProvider)

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
	initProvider?: #FirewallRuleInitParameters @go(InitProvider)
}

// FirewallRuleStatus defines the observed state of FirewallRule.
#FirewallRuleStatus: {
	atProvider?: #FirewallRuleObservation @go(AtProvider)
}

// FirewallRule is the Schema for the FirewallRules API. A single firewall rule that is evaluated against incoming traffic and provides an action to take on matched requests.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#FirewallRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.action) || has(self.initProvider.action)",message="action is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sourceRange) || has(self.initProvider.sourceRange)",message="sourceRange is a required parameter"
	spec:    #FirewallRuleSpec   @go(Spec)
	status?: #FirewallRuleStatus @go(Status)
}

// FirewallRuleList contains a list of FirewallRules
#FirewallRuleList: {
	items: [...#FirewallRule] @go(Items,[]FirewallRule)
}
