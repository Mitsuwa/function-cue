// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/automation/v1beta1

package v1beta1

#WebhookInitParameters: {
	// Controls if Webhook is enabled. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Timestamp when the webhook expires. Changing this forces a new resource to be created.
	expiryTime?: null | string @go(ExpiryTime,*string)

	// Specifies the name of the Webhook. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Map of input parameters passed to runbook.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// Name of the hybrid worker group the Webhook job will run on.
	runOnWorkerGroup?: null | string @go(RunOnWorkerGroup,*string)
}

#WebhookObservation: {
	// The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// Controls if Webhook is enabled. Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Timestamp when the webhook expires. Changing this forces a new resource to be created.
	expiryTime?: null | string @go(ExpiryTime,*string)

	// The Automation Webhook ID.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Webhook. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Map of input parameters passed to runbook.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Name of the Automation Runbook to execute by Webhook.
	runbookName?: null | string @go(RunBookName,*string)

	// Name of the hybrid worker group the Webhook job will run on.
	runOnWorkerGroup?: null | string @go(RunOnWorkerGroup,*string)
}

#WebhookParameters: {
	// The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.Account
	// +kubebuilder:validation:Optional
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// Controls if Webhook is enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Timestamp when the webhook expires. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	expiryTime?: null | string @go(ExpiryTime,*string)

	// Specifies the name of the Webhook. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Map of input parameters passed to runbook.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Name of the Automation Runbook to execute by Webhook.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.RunBook
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",false)
	// +kubebuilder:validation:Optional
	runbookName?: null | string @go(RunBookName,*string)

	// Name of the hybrid worker group the Webhook job will run on.
	// +kubebuilder:validation:Optional
	runOnWorkerGroup?: null | string @go(RunOnWorkerGroup,*string)
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

// Webhook is the Schema for the Webhooks API. Manages an Automation Runbook's Webhook.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Webhook: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.expiryTime) || has(self.initProvider.expiryTime)",message="expiryTime is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #WebhookSpec   @go(Spec)
	status?: #WebhookStatus @go(Status)
}

// WebhookList contains a list of Webhooks
#WebhookList: {
	items: [...#Webhook] @go(Items,[]Webhook)
}
