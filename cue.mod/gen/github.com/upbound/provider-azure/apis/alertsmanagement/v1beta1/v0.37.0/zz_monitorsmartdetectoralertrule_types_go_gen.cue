// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/alertsmanagement/v1beta1

package v1beta1

#ActionGroupInitParameters: {
	// Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
	emailSubject?: null | string @go(EmailSubject,*string)

	// A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.
	webhookPayload?: null | string @go(WebhookPayload,*string)
}

#ActionGroupObservation: {
	// Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
	emailSubject?: null | string @go(EmailSubject,*string)

	// Specifies the action group ids.
	ids?: [...null | string] @go(Ids,[]*string)

	// A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.
	webhookPayload?: null | string @go(WebhookPayload,*string)
}

#ActionGroupParameters: {
	// Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
	// +kubebuilder:validation:Optional
	emailSubject?: null | string @go(EmailSubject,*string)

	// Specifies the action group ids.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.MonitorActionGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	ids?: [...null | string] @go(Ids,[]*string)

	// A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.
	// +kubebuilder:validation:Optional
	webhookPayload?: null | string @go(WebhookPayload,*string)
}

#MonitorSmartDetectorAlertRuleInitParameters: {
	// An action_group block as defined below.
	actionGroup?: [...#ActionGroupInitParameters] @go(ActionGroup,[]ActionGroupInitParameters)

	// Specifies a description for the Smart Detector Alert Rule.
	description?: null | string @go(Description,*string)

	// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector.
	detectorType?: null | string @go(DetectorType,*string)

	// Is the Smart Detector Alert Rule enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
	frequency?: null | string @go(Frequency,*string)

	// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the severity of this Smart Detector Alert Rule. Possible values are Sev0, Sev1, Sev2, Sev3 or Sev4.
	severity?: null | string @go(Severity,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
	throttlingDuration?: null | string @go(ThrottlingDuration,*string)
}

#MonitorSmartDetectorAlertRuleObservation: {
	// An action_group block as defined below.
	actionGroup?: [...#ActionGroupObservation] @go(ActionGroup,[]ActionGroupObservation)

	// Specifies a description for the Smart Detector Alert Rule.
	description?: null | string @go(Description,*string)

	// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector.
	detectorType?: null | string @go(DetectorType,*string)

	// Is the Smart Detector Alert Rule enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
	frequency?: null | string @go(Frequency,*string)

	// The ID of the Monitor Smart Detector Alert Rule.
	id?: null | string @go(ID,*string)

	// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the scopes of this Smart Detector Alert Rule.
	scopeResourceIds?: [...null | string] @go(ScopeResourceIds,[]*string)

	// Specifies the severity of this Smart Detector Alert Rule. Possible values are Sev0, Sev1, Sev2, Sev3 or Sev4.
	severity?: null | string @go(Severity,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
	throttlingDuration?: null | string @go(ThrottlingDuration,*string)
}

#MonitorSmartDetectorAlertRuleParameters: {
	// An action_group block as defined below.
	// +kubebuilder:validation:Optional
	actionGroup?: [...#ActionGroupParameters] @go(ActionGroup,[]ActionGroupParameters)

	// Specifies a description for the Smart Detector Alert Rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector.
	// +kubebuilder:validation:Optional
	detectorType?: null | string @go(DetectorType,*string)

	// Is the Smart Detector Alert Rule enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format.
	// +kubebuilder:validation:Optional
	frequency?: null | string @go(Frequency,*string)

	// Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the scopes of this Smart Detector Alert Rule.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	scopeResourceIds?: [...null | string] @go(ScopeResourceIds,[]*string)

	// Specifies the severity of this Smart Detector Alert Rule. Possible values are Sev0, Sev1, Sev2, Sev3 or Sev4.
	// +kubebuilder:validation:Optional
	severity?: null | string @go(Severity,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again.
	// +kubebuilder:validation:Optional
	throttlingDuration?: null | string @go(ThrottlingDuration,*string)
}

// MonitorSmartDetectorAlertRuleSpec defines the desired state of MonitorSmartDetectorAlertRule
#MonitorSmartDetectorAlertRuleSpec: {
	forProvider: #MonitorSmartDetectorAlertRuleParameters @go(ForProvider)

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
	initProvider?: #MonitorSmartDetectorAlertRuleInitParameters @go(InitProvider)
}

// MonitorSmartDetectorAlertRuleStatus defines the observed state of MonitorSmartDetectorAlertRule.
#MonitorSmartDetectorAlertRuleStatus: {
	atProvider?: #MonitorSmartDetectorAlertRuleObservation @go(AtProvider)
}

// MonitorSmartDetectorAlertRule is the Schema for the MonitorSmartDetectorAlertRules API. Manages an Monitor Smart Detector Alert Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorSmartDetectorAlertRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.actionGroup) || (has(self.initProvider) && has(self.initProvider.actionGroup))",message="spec.forProvider.actionGroup is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.detectorType) || (has(self.initProvider) && has(self.initProvider.detectorType))",message="spec.forProvider.detectorType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.frequency) || (has(self.initProvider) && has(self.initProvider.frequency))",message="spec.forProvider.frequency is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.severity) || (has(self.initProvider) && has(self.initProvider.severity))",message="spec.forProvider.severity is a required parameter"
	spec:    #MonitorSmartDetectorAlertRuleSpec   @go(Spec)
	status?: #MonitorSmartDetectorAlertRuleStatus @go(Status)
}

// MonitorSmartDetectorAlertRuleList contains a list of MonitorSmartDetectorAlertRules
#MonitorSmartDetectorAlertRuleList: {
	items: [...#MonitorSmartDetectorAlertRule] @go(Items,[]MonitorSmartDetectorAlertRule)
}
