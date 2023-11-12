// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/containerregistry/v1beta1

package v1beta1

#WebhookInitParameters: {
	// A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: push, delete, quarantine, chart_push, chart_delete
	actions?: [...null | string] @go(Actions,[]*string)

	// Custom headers that will be added to the webhook notifications request.
	customHeaders?: {[string]: null | string} @go(CustomHeaders,map[string]*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the scope of repositories that can trigger an event. For example, foo:* means events for all tags under repository foo. foo:bar means events for 'foo:bar' only. foo is equivalent to foo:latest. Empty means all events. Defaults to "".
	scope?: null | string @go(Scope,*string)

	// Specifies the service URI for the Webhook to post notifications.
	serviceUri?: null | string @go(ServiceURI,*string)

	// Specifies if this Webhook triggers notifications or not. Valid values: enabled and disabled. Default is enabled.
	status?: null | string @go(Status,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WebhookObservation: {
	// A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: push, delete, quarantine, chart_push, chart_delete
	actions?: [...null | string] @go(Actions,[]*string)

	// Custom headers that will be added to the webhook notifications request.
	customHeaders?: {[string]: null | string} @go(CustomHeaders,map[string]*string)

	// The ID of the Container Registry Webhook.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created.
	registryName?: null | string @go(RegistryName,*string)

	// The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the scope of repositories that can trigger an event. For example, foo:* means events for all tags under repository foo. foo:bar means events for 'foo:bar' only. foo is equivalent to foo:latest. Empty means all events. Defaults to "".
	scope?: null | string @go(Scope,*string)

	// Specifies the service URI for the Webhook to post notifications.
	serviceUri?: null | string @go(ServiceURI,*string)

	// Specifies if this Webhook triggers notifications or not. Valid values: enabled and disabled. Default is enabled.
	status?: null | string @go(Status,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WebhookParameters: {
	// A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: push, delete, quarantine, chart_push, chart_delete
	// +kubebuilder:validation:Optional
	actions?: [...null | string] @go(Actions,[]*string)

	// Custom headers that will be added to the webhook notifications request.
	// +kubebuilder:validation:Optional
	customHeaders?: {[string]: null | string} @go(CustomHeaders,map[string]*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/containerregistry/v1beta1.Registry
	// +kubebuilder:validation:Optional
	registryName?: null | string @go(RegistryName,*string)

	// The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the scope of repositories that can trigger an event. For example, foo:* means events for all tags under repository foo. foo:bar means events for 'foo:bar' only. foo is equivalent to foo:latest. Empty means all events. Defaults to "".
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)

	// Specifies the service URI for the Webhook to post notifications.
	// +kubebuilder:validation:Optional
	serviceUri?: null | string @go(ServiceURI,*string)

	// Specifies if this Webhook triggers notifications or not. Valid values: enabled and disabled. Default is enabled.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// WebhookSpec defines the desired state of Webhook
#WebhookSpec: {
	forProvider: #WebhookParameters @go(ForProvider)

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
	initProvider?: #WebhookInitParameters @go(InitProvider)
}

// WebhookStatus defines the observed state of Webhook.
#WebhookStatus: {
	atProvider?: #WebhookObservation @go(AtProvider)
}

// Webhook is the Schema for the Webhooks API. Manages an Azure Container Registry Webhook.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Webhook: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.actions) || has(self.initProvider.actions)",message="actions is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.serviceUri) || has(self.initProvider.serviceUri)",message="serviceUri is a required parameter"
	spec:    #WebhookSpec   @go(Spec)
	status?: #WebhookStatus @go(Status)
}

// WebhookList contains a list of Webhooks
#WebhookList: {
	items: [...#Webhook] @go(Items,[]Webhook)
}
