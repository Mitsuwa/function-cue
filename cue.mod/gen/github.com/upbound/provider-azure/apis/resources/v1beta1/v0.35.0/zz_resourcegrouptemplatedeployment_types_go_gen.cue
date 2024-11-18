// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/resources/v1beta1

package v1beta1

#ResourceGroupTemplateDeploymentInitParameters: {
	// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are none, requestContent, responseContent and requestContent, responseContent.
	debugLevel?: null | string @go(DebugLevel,*string)

	// The Deployment Mode for this Resource Group Template Deployment. Possible values are Complete (where resources in the Resource Group not specified in the ARM Template will be destroyed) and Incremental (where resources are additive only).
	deploymentMode?: null | string @go(DeploymentMode,*string)

	// The contents of the ARM Template parameters file - containing a JSON list of parameters.
	parametersContent?: null | string @go(ParametersContent,*string)

	// A mapping of tags which should be assigned to the Resource Group Template Deployment.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with template_spec_version_id.
	templateContent?: null | string @go(TemplateContent,*string)

	// The ID of the Template Spec Version to deploy. Cannot be specified with template_content.
	templateSpecVersionId?: null | string @go(TemplateSpecVersionID,*string)
}

#ResourceGroupTemplateDeploymentObservation: {
	// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are none, requestContent, responseContent and requestContent, responseContent.
	debugLevel?: null | string @go(DebugLevel,*string)

	// The Deployment Mode for this Resource Group Template Deployment. Possible values are Complete (where resources in the Resource Group not specified in the ARM Template will be destroyed) and Incremental (where resources are additive only).
	deploymentMode?: null | string @go(DeploymentMode,*string)

	// The ID of the Resource Group Template Deployment.
	id?: null | string @go(ID,*string)

	// The JSON Content of the Outputs of the ARM Template Deployment.
	outputContent?: null | string @go(OutputContent,*string)

	// The contents of the ARM Template parameters file - containing a JSON list of parameters.
	parametersContent?: null | string @go(ParametersContent,*string)

	// The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Resource Group Template Deployment.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with template_spec_version_id.
	templateContent?: null | string @go(TemplateContent,*string)

	// The ID of the Template Spec Version to deploy. Cannot be specified with template_content.
	templateSpecVersionId?: null | string @go(TemplateSpecVersionID,*string)
}

#ResourceGroupTemplateDeploymentParameters: {
	// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are none, requestContent, responseContent and requestContent, responseContent.
	// +kubebuilder:validation:Optional
	debugLevel?: null | string @go(DebugLevel,*string)

	// The Deployment Mode for this Resource Group Template Deployment. Possible values are Complete (where resources in the Resource Group not specified in the ARM Template will be destroyed) and Incremental (where resources are additive only).
	// +kubebuilder:validation:Optional
	deploymentMode?: null | string @go(DeploymentMode,*string)

	// The contents of the ARM Template parameters file - containing a JSON list of parameters.
	// +kubebuilder:validation:Optional
	parametersContent?: null | string @go(ParametersContent,*string)

	// The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Resource Group Template Deployment.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with template_spec_version_id.
	// +kubebuilder:validation:Optional
	templateContent?: null | string @go(TemplateContent,*string)

	// The ID of the Template Spec Version to deploy. Cannot be specified with template_content.
	// +kubebuilder:validation:Optional
	templateSpecVersionId?: null | string @go(TemplateSpecVersionID,*string)
}

// ResourceGroupTemplateDeploymentSpec defines the desired state of ResourceGroupTemplateDeployment
#ResourceGroupTemplateDeploymentSpec: {
	forProvider: #ResourceGroupTemplateDeploymentParameters @go(ForProvider)

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
	initProvider?: #ResourceGroupTemplateDeploymentInitParameters @go(InitProvider)
}

// ResourceGroupTemplateDeploymentStatus defines the observed state of ResourceGroupTemplateDeployment.
#ResourceGroupTemplateDeploymentStatus: {
	atProvider?: #ResourceGroupTemplateDeploymentObservation @go(AtProvider)
}

// ResourceGroupTemplateDeployment is the Schema for the ResourceGroupTemplateDeployments API. Manages a Resource Group Template Deployment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ResourceGroupTemplateDeployment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.deploymentMode) || has(self.initProvider.deploymentMode)",message="deploymentMode is a required parameter"
	spec:    #ResourceGroupTemplateDeploymentSpec   @go(Spec)
	status?: #ResourceGroupTemplateDeploymentStatus @go(Status)
}

// ResourceGroupTemplateDeploymentList contains a list of ResourceGroupTemplateDeployments
#ResourceGroupTemplateDeploymentList: {
	items: [...#ResourceGroupTemplateDeployment] @go(Items,[]ResourceGroupTemplateDeployment)
}
