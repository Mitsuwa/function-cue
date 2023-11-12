// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbformysql/v1beta1

package v1beta1

#FirewallRuleInitParameters: {
	// Specifies the End IP Address associated with this Firewall Rule.
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// Specifies the Start IP Address associated with this Firewall Rule.
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

#FirewallRuleObservation: {
	// Specifies the End IP Address associated with this Firewall Rule.
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// The ID of the MySQL Firewall Rule.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Server. Changing this forces a new resource to be created.
	serverName?: null | string @go(ServerName,*string)

	// Specifies the Start IP Address associated with this Firewall Rule.
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

#FirewallRuleParameters: {
	// Specifies the End IP Address associated with this Firewall Rule.
	// +kubebuilder:validation:Optional
	endIpAddress?: null | string @go(EndIPAddress,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Server. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/dbformysql/v1beta1.Server
	// +kubebuilder:validation:Optional
	serverName?: null | string @go(ServerName,*string)

	// Specifies the Start IP Address associated with this Firewall Rule.
	// +kubebuilder:validation:Optional
	startIpAddress?: null | string @go(StartIPAddress,*string)
}

// FirewallRuleSpec defines the desired state of FirewallRule
#FirewallRuleSpec: {
	forProvider: #FirewallRuleParameters @go(ForProvider)

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
	initProvider?: #FirewallRuleInitParameters @go(InitProvider)
}

// FirewallRuleStatus defines the observed state of FirewallRule.
#FirewallRuleStatus: {
	atProvider?: #FirewallRuleObservation @go(AtProvider)
}

// FirewallRule is the Schema for the FirewallRules API. Manages a Firewall Rule for a MySQL Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FirewallRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.endIpAddress) || (has(self.initProvider) && has(self.initProvider.endIpAddress))",message="spec.forProvider.endIpAddress is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.startIpAddress) || (has(self.initProvider) && has(self.initProvider.startIpAddress))",message="spec.forProvider.startIpAddress is a required parameter"
	spec:    #FirewallRuleSpec   @go(Spec)
	status?: #FirewallRuleStatus @go(Status)
}

// FirewallRuleList contains a list of FirewallRules
#FirewallRuleList: {
	items: [...#FirewallRule] @go(Items,[]FirewallRule)
}
