// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbforpostgresql/v1beta1

package v1beta1

#FlexibleServerFirewallRuleInitParameters: {
	// The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

#FlexibleServerFirewallRuleObservation: {
	// The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// The ID of the PostgreSQL Flexible Server Firewall Rule.
	id?: null | string @go(ID,*string)

	// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
	serverId?: null | string @go(ServerID,*string)

	// The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

#FlexibleServerFirewallRuleParameters: {
	// The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	// +kubebuilder:validation:Optional
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
	// +crossplane:generate:reference:type=FlexibleServer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	serverId?: null | string @go(ServerID,*string)

	// The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule.
	// +kubebuilder:validation:Optional
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

// FlexibleServerFirewallRuleSpec defines the desired state of FlexibleServerFirewallRule
#FlexibleServerFirewallRuleSpec: {
	forProvider: #FlexibleServerFirewallRuleParameters @go(ForProvider)

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
	initProvider?: #FlexibleServerFirewallRuleInitParameters @go(InitProvider)
}

// FlexibleServerFirewallRuleStatus defines the observed state of FlexibleServerFirewallRule.
#FlexibleServerFirewallRuleStatus: {
	atProvider?: #FlexibleServerFirewallRuleObservation @go(AtProvider)
}

// FlexibleServerFirewallRule is the Schema for the FlexibleServerFirewallRules API. Manages a PostgreSQL Flexible Server Firewall Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FlexibleServerFirewallRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.endIpAddress) || (has(self.initProvider) && has(self.initProvider.endIpAddress))",message="spec.forProvider.endIpAddress is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.startIpAddress) || (has(self.initProvider) && has(self.initProvider.startIpAddress))",message="spec.forProvider.startIpAddress is a required parameter"
	spec:    #FlexibleServerFirewallRuleSpec   @go(Spec)
	status?: #FlexibleServerFirewallRuleStatus @go(Status)
}

// FlexibleServerFirewallRuleList contains a list of FlexibleServerFirewallRules
#FlexibleServerFirewallRuleList: {
	items: [...#FlexibleServerFirewallRule] @go(Items,[]FlexibleServerFirewallRule)
}
