// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/securityinsights/v1beta1

package v1beta1

#SentinelAlertRuleMachineLearningBehaviorAnalyticsInitParameters: {
	// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	alertRuleTemplateGuid?: null | string @go(AlertRuleTemplateGUID,*string)

	// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	name?: null | string @go(Name,*string)
}

#SentinelAlertRuleMachineLearningBehaviorAnalyticsObservation: {
	// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	alertRuleTemplateGuid?: null | string @go(AlertRuleTemplateGUID,*string)

	// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Sentinel Machine Learning Behavior Analytics Alert Rule.
	id?: null | string @go(ID,*string)

	// The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	name?: null | string @go(Name,*string)
}

#SentinelAlertRuleMachineLearningBehaviorAnalyticsParameters: {
	// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	// +kubebuilder:validation:Optional
	alertRuleTemplateGuid?: null | string @go(AlertRuleTemplateGUID,*string)

	// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/operationalinsights/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

// SentinelAlertRuleMachineLearningBehaviorAnalyticsSpec defines the desired state of SentinelAlertRuleMachineLearningBehaviorAnalytics
#SentinelAlertRuleMachineLearningBehaviorAnalyticsSpec: {
	forProvider: #SentinelAlertRuleMachineLearningBehaviorAnalyticsParameters @go(ForProvider)

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
	initProvider?: #SentinelAlertRuleMachineLearningBehaviorAnalyticsInitParameters @go(InitProvider)
}

// SentinelAlertRuleMachineLearningBehaviorAnalyticsStatus defines the observed state of SentinelAlertRuleMachineLearningBehaviorAnalytics.
#SentinelAlertRuleMachineLearningBehaviorAnalyticsStatus: {
	atProvider?: #SentinelAlertRuleMachineLearningBehaviorAnalyticsObservation @go(AtProvider)
}

// SentinelAlertRuleMachineLearningBehaviorAnalytics is the Schema for the SentinelAlertRuleMachineLearningBehaviorAnalyticss API. Manages a Sentinel Machine Learning Behavior Analytics Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SentinelAlertRuleMachineLearningBehaviorAnalytics: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.alertRuleTemplateGuid) || (has(self.initProvider) && has(self.initProvider.alertRuleTemplateGuid))",message="spec.forProvider.alertRuleTemplateGuid is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #SentinelAlertRuleMachineLearningBehaviorAnalyticsSpec   @go(Spec)
	status?: #SentinelAlertRuleMachineLearningBehaviorAnalyticsStatus @go(Status)
}

// SentinelAlertRuleMachineLearningBehaviorAnalyticsList contains a list of SentinelAlertRuleMachineLearningBehaviorAnalyticss
#SentinelAlertRuleMachineLearningBehaviorAnalyticsList: {
	items: [...#SentinelAlertRuleMachineLearningBehaviorAnalytics] @go(Items,[]SentinelAlertRuleMachineLearningBehaviorAnalytics)
}
