// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/logic/v1beta1

package v1beta1

#AccessControlInitParameters: {
	// A action block as defined below.
	action?: [...#ActionInitParameters] @go(Action,[]ActionInitParameters)

	// A content block as defined below.
	content?: [...#ContentInitParameters] @go(Content,[]ContentInitParameters)

	// A trigger block as defined below.
	trigger?: [...#TriggerInitParameters] @go(Trigger,[]TriggerInitParameters)

	// A workflow_management block as defined below.
	workflowManagement?: [...#WorkflowManagementInitParameters] @go(WorkflowManagement,[]WorkflowManagementInitParameters)
}

#AccessControlObservation: {
	// A action block as defined below.
	action?: [...#ActionObservation] @go(Action,[]ActionObservation)

	// A content block as defined below.
	content?: [...#ContentObservation] @go(Content,[]ContentObservation)

	// A trigger block as defined below.
	trigger?: [...#TriggerObservation] @go(Trigger,[]TriggerObservation)

	// A workflow_management block as defined below.
	workflowManagement?: [...#WorkflowManagementObservation] @go(WorkflowManagement,[]WorkflowManagementObservation)
}

#AccessControlParameters: {
	// A action block as defined below.
	// +kubebuilder:validation:Optional
	action?: [...#ActionParameters] @go(Action,[]ActionParameters)

	// A content block as defined below.
	// +kubebuilder:validation:Optional
	content?: [...#ContentParameters] @go(Content,[]ContentParameters)

	// A trigger block as defined below.
	// +kubebuilder:validation:Optional
	trigger?: [...#TriggerParameters] @go(Trigger,[]TriggerParameters)

	// A workflow_management block as defined below.
	// +kubebuilder:validation:Optional
	workflowManagement?: [...#WorkflowManagementParameters] @go(WorkflowManagement,[]WorkflowManagementParameters)
}

#ActionInitParameters: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#ActionObservation: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#ActionParameters: {
	// A list of the allowed caller IP address ranges.
	// +kubebuilder:validation:Optional
	allowedCallerIpAddressRange: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#AppWorkflowInitParameters: {
	// A access_control block as defined below.
	accessControl?: [...#AccessControlInitParameters] @go(AccessControl,[]AccessControlInitParameters)

	// Is the Logic App Workflow enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
	integrationServiceEnvironmentId?: null | string @go(IntegrationServiceEnvironmentID,*string)

	// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The ID of the integration account linked by this Logic App Workflow.
	logicAppIntegrationAccountId?: null | string @go(LogicAppIntegrationAccountID,*string)

	// A map of Key-Value pairs.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters).
	workflowParameters?: {[string]: null | string} @go(WorkflowParameters,map[string]*string)

	// Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#. Changing this forces a new resource to be created.
	workflowSchema?: null | string @go(WorkflowSchema,*string)

	// Specifies the version of the Schema used for this Logic App Workflow. Defaults to 1.0.0.0. Changing this forces a new resource to be created.
	workflowVersion?: null | string @go(WorkflowVersion,*string)
}

#AppWorkflowObservation: {
	// A access_control block as defined below.
	accessControl?: [...#AccessControlObservation] @go(AccessControl,[]AccessControlObservation)

	// The Access Endpoint for the Logic App Workflow.
	accessEndpoint?: null | string @go(AccessEndpoint,*string)

	// The list of access endpoint IP addresses of connector.
	connectorEndpointIpAddresses?: [...null | string] @go(ConnectorEndpointIPAddresses,[]*string)

	// The list of outgoing IP addresses of connector.
	connectorOutboundIpAddresses?: [...null | string] @go(ConnectorOutboundIPAddresses,[]*string)

	// Is the Logic App Workflow enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The Logic App Workflow ID.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
	integrationServiceEnvironmentId?: null | string @go(IntegrationServiceEnvironmentID,*string)

	// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The ID of the integration account linked by this Logic App Workflow.
	logicAppIntegrationAccountId?: null | string @go(LogicAppIntegrationAccountID,*string)

	// A map of Key-Value pairs.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The list of access endpoint IP addresses of workflow.
	workflowEndpointIpAddresses?: [...null | string] @go(WorkflowEndpointIPAddresses,[]*string)

	// The list of outgoing IP addresses of workflow.
	workflowOutboundIpAddresses?: [...null | string] @go(WorkflowOutboundIPAddresses,[]*string)

	// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters).
	workflowParameters?: {[string]: null | string} @go(WorkflowParameters,map[string]*string)

	// Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#. Changing this forces a new resource to be created.
	workflowSchema?: null | string @go(WorkflowSchema,*string)

	// Specifies the version of the Schema used for this Logic App Workflow. Defaults to 1.0.0.0. Changing this forces a new resource to be created.
	workflowVersion?: null | string @go(WorkflowVersion,*string)
}

#AppWorkflowParameters: {
	// A access_control block as defined below.
	// +kubebuilder:validation:Optional
	accessControl?: [...#AccessControlParameters] @go(AccessControl,[]AccessControlParameters)

	// Is the Logic App Workflow enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
	// +kubebuilder:validation:Optional
	integrationServiceEnvironmentId?: null | string @go(IntegrationServiceEnvironmentID,*string)

	// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The ID of the integration account linked by this Logic App Workflow.
	// +kubebuilder:validation:Optional
	logicAppIntegrationAccountId?: null | string @go(LogicAppIntegrationAccountID,*string)

	// A map of Key-Value pairs.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters).
	// +kubebuilder:validation:Optional
	workflowParameters?: {[string]: null | string} @go(WorkflowParameters,map[string]*string)

	// Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	workflowSchema?: null | string @go(WorkflowSchema,*string)

	// Specifies the version of the Schema used for this Logic App Workflow. Defaults to 1.0.0.0. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	workflowVersion?: null | string @go(WorkflowVersion,*string)
}

#ClaimInitParameters: {
	// The OAuth policy name for the Logic App Workflow.
	name?: null | string @go(Name,*string)

	// The value of the OAuth policy claim for the Logic App Workflow.
	value?: null | string @go(Value,*string)
}

#ClaimObservation: {
	// The OAuth policy name for the Logic App Workflow.
	name?: null | string @go(Name,*string)

	// The value of the OAuth policy claim for the Logic App Workflow.
	value?: null | string @go(Value,*string)
}

#ClaimParameters: {
	// The OAuth policy name for the Logic App Workflow.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The value of the OAuth policy claim for the Logic App Workflow.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#ContentInitParameters: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#ContentObservation: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#ContentParameters: {
	// A list of the allowed caller IP address ranges.
	// +kubebuilder:validation:Optional
	allowedCallerIpAddressRange: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are SystemAssigned, UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#OpenAuthenticationPolicyInitParameters: {
	// A claim block as defined below.
	claim?: [...#ClaimInitParameters] @go(Claim,[]ClaimInitParameters)

	// The OAuth policy name for the Logic App Workflow.
	name?: null | string @go(Name,*string)
}

#OpenAuthenticationPolicyObservation: {
	// A claim block as defined below.
	claim?: [...#ClaimObservation] @go(Claim,[]ClaimObservation)

	// The OAuth policy name for the Logic App Workflow.
	name?: null | string @go(Name,*string)
}

#OpenAuthenticationPolicyParameters: {
	// A claim block as defined below.
	// +kubebuilder:validation:Optional
	claim: [...#ClaimParameters] @go(Claim,[]ClaimParameters)

	// The OAuth policy name for the Logic App Workflow.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#TriggerInitParameters: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)

	// A open_authentication_policy block as defined below.
	openAuthenticationPolicy?: [...#OpenAuthenticationPolicyInitParameters] @go(OpenAuthenticationPolicy,[]OpenAuthenticationPolicyInitParameters)
}

#TriggerObservation: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)

	// A open_authentication_policy block as defined below.
	openAuthenticationPolicy?: [...#OpenAuthenticationPolicyObservation] @go(OpenAuthenticationPolicy,[]OpenAuthenticationPolicyObservation)
}

#TriggerParameters: {
	// A list of the allowed caller IP address ranges.
	// +kubebuilder:validation:Optional
	allowedCallerIpAddressRange: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)

	// A open_authentication_policy block as defined below.
	// +kubebuilder:validation:Optional
	openAuthenticationPolicy?: [...#OpenAuthenticationPolicyParameters] @go(OpenAuthenticationPolicy,[]OpenAuthenticationPolicyParameters)
}

#WorkflowManagementInitParameters: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#WorkflowManagementObservation: {
	// A list of the allowed caller IP address ranges.
	allowedCallerIpAddressRange?: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

#WorkflowManagementParameters: {
	// A list of the allowed caller IP address ranges.
	// +kubebuilder:validation:Optional
	allowedCallerIpAddressRange: [...null | string] @go(AllowedCallerIPAddressRange,[]*string)
}

// AppWorkflowSpec defines the desired state of AppWorkflow
#AppWorkflowSpec: {
	forProvider: #AppWorkflowParameters @go(ForProvider)

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
	initProvider?: #AppWorkflowInitParameters @go(InitProvider)
}

// AppWorkflowStatus defines the observed state of AppWorkflow.
#AppWorkflowStatus: {
	atProvider?: #AppWorkflowObservation @go(AtProvider)
}

// AppWorkflow is the Schema for the AppWorkflows API. Manages a Logic App Workflow.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AppWorkflow: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #AppWorkflowSpec   @go(Spec)
	status?: #AppWorkflowStatus @go(Status)
}

// AppWorkflowList contains a list of AppWorkflows
#AppWorkflowList: {
	items: [...#AppWorkflow] @go(Items,[]AppWorkflow)
}
