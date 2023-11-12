// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/relay/v1beta1

package v1beta1

#HybridConnectionAuthorizationRuleInitParameters: {
	// Grants listen access to this Authorization Rule. Defaults to false.
	listen?: null | bool @go(Listen,*bool)

	// Grants manage access to this Authorization Rule. When this property is true - both listen and send must be set to true too. Defaults to false.
	manage?: null | bool @go(Manage,*bool)

	// Grants send access to this Authorization Rule. Defaults to false.
	send?: null | bool @go(Send,*bool)
}

#HybridConnectionAuthorizationRuleObservation: {
	// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	hybridConnectionName?: null | string @go(HybridConnectionName,*string)

	// The ID of the Azure Relay Hybrid Connection Authorization Rule.
	id?: null | string @go(ID,*string)

	// Grants listen access to this Authorization Rule. Defaults to false.
	listen?: null | bool @go(Listen,*bool)

	// Grants manage access to this Authorization Rule. When this property is true - both listen and send must be set to true too. Defaults to false.
	manage?: null | bool @go(Manage,*bool)

	// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	namespaceName?: null | string @go(NamespaceName,*string)

	// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Grants send access to this Authorization Rule. Defaults to false.
	send?: null | bool @go(Send,*bool)
}

#HybridConnectionAuthorizationRuleParameters: {
	// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/relay/v1beta1.HybridConnection
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	hybridConnectionName?: null | string @go(HybridConnectionName,*string)

	// Grants listen access to this Authorization Rule. Defaults to false.
	// +kubebuilder:validation:Optional
	listen?: null | bool @go(Listen,*bool)

	// Grants manage access to this Authorization Rule. When this property is true - both listen and send must be set to true too. Defaults to false.
	// +kubebuilder:validation:Optional
	manage?: null | bool @go(Manage,*bool)

	// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/relay/v1beta1.EventRelayNamespace
	// +kubebuilder:validation:Optional
	namespaceName?: null | string @go(NamespaceName,*string)

	// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Grants send access to this Authorization Rule. Defaults to false.
	// +kubebuilder:validation:Optional
	send?: null | bool @go(Send,*bool)
}

// HybridConnectionAuthorizationRuleSpec defines the desired state of HybridConnectionAuthorizationRule
#HybridConnectionAuthorizationRuleSpec: {
	forProvider: #HybridConnectionAuthorizationRuleParameters @go(ForProvider)

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
	initProvider?: #HybridConnectionAuthorizationRuleInitParameters @go(InitProvider)
}

// HybridConnectionAuthorizationRuleStatus defines the observed state of HybridConnectionAuthorizationRule.
#HybridConnectionAuthorizationRuleStatus: {
	atProvider?: #HybridConnectionAuthorizationRuleObservation @go(AtProvider)
}

// HybridConnectionAuthorizationRule is the Schema for the HybridConnectionAuthorizationRules API. Manages an Azure Relay Hybrid Connection Authorization Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#HybridConnectionAuthorizationRule: {
	spec:    #HybridConnectionAuthorizationRuleSpec   @go(Spec)
	status?: #HybridConnectionAuthorizationRuleStatus @go(Status)
}

// HybridConnectionAuthorizationRuleList contains a list of HybridConnectionAuthorizationRules
#HybridConnectionAuthorizationRuleList: {
	items: [...#HybridConnectionAuthorizationRule] @go(Items,[]HybridConnectionAuthorizationRule)
}
