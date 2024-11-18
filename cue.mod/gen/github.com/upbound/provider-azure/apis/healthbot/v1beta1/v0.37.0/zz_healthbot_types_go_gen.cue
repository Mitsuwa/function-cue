// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/healthbot/v1beta1

package v1beta1

#HealthBotInitParameters: {
	// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name which should be used for the SKU of the service. Possible values are C0, F0 and S1.
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags which should be assigned to the service.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#HealthBotObservation: {
	// The management portal url.
	botManagementPortalUrl?: null | string @go(BotManagementPortalURL,*string)

	// The ID of the resource.
	id?: null | string @go(ID,*string)

	// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name which should be used for the SKU of the service. Possible values are C0, F0 and S1.
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags which should be assigned to the service.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#HealthBotParameters: {
	// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name which should be used for the SKU of the service. Possible values are C0, F0 and S1.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags which should be assigned to the service.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// HealthBotSpec defines the desired state of HealthBot
#HealthBotSpec: {
	forProvider: #HealthBotParameters @go(ForProvider)

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
	initProvider?: #HealthBotInitParameters @go(InitProvider)
}

// HealthBotStatus defines the observed state of HealthBot.
#HealthBotStatus: {
	atProvider?: #HealthBotObservation @go(AtProvider)
}

// HealthBot is the Schema for the HealthBots API. Manages a Healthbot Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#HealthBot: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.skuName) || (has(self.initProvider) && has(self.initProvider.skuName))",message="spec.forProvider.skuName is a required parameter"
	spec:    #HealthBotSpec   @go(Spec)
	status?: #HealthBotStatus @go(Status)
}

// HealthBotList contains a list of HealthBots
#HealthBotList: {
	items: [...#HealthBot] @go(Items,[]HealthBot)
}
