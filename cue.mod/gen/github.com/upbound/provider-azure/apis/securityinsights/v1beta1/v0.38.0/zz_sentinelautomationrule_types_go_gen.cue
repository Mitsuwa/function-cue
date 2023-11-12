// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/securityinsights/v1beta1

package v1beta1

#ActionIncidentInitParameters: {
	// The classification of the incident, when closing it. Possible values are: BenignPositive_SuspiciousButExpected, FalsePositive_InaccurateData, FalsePositive_IncorrectAlertLogic, TruePositive_SuspiciousActivity and Undetermined.
	classification?: null | string @go(Classification,*string)

	// The comment why the incident is to be closed.
	classificationComment?: null | string @go(ClassificationComment,*string)

	// Specifies a list of labels to add to the incident.
	labels?: [...null | string] @go(Labels,[]*string)

	// The execution order of this action.
	order?: null | float64 @go(Order,*float64)

	// The object ID of the entity this incident is assigned to.
	ownerId?: null | string @go(OwnerID,*string)

	// The severity to add to the incident. Possible values are High, Informational, Low and Medium.
	severity?: null | string @go(Severity,*string)

	// The status to set to the incident. Possible values are: Active, Closed, New.
	status?: null | string @go(Status,*string)
}

#ActionIncidentObservation: {
	// The classification of the incident, when closing it. Possible values are: BenignPositive_SuspiciousButExpected, FalsePositive_InaccurateData, FalsePositive_IncorrectAlertLogic, TruePositive_SuspiciousActivity and Undetermined.
	classification?: null | string @go(Classification,*string)

	// The comment why the incident is to be closed.
	classificationComment?: null | string @go(ClassificationComment,*string)

	// Specifies a list of labels to add to the incident.
	labels?: [...null | string] @go(Labels,[]*string)

	// The execution order of this action.
	order?: null | float64 @go(Order,*float64)

	// The object ID of the entity this incident is assigned to.
	ownerId?: null | string @go(OwnerID,*string)

	// The severity to add to the incident. Possible values are High, Informational, Low and Medium.
	severity?: null | string @go(Severity,*string)

	// The status to set to the incident. Possible values are: Active, Closed, New.
	status?: null | string @go(Status,*string)
}

#ActionIncidentParameters: {
	// The classification of the incident, when closing it. Possible values are: BenignPositive_SuspiciousButExpected, FalsePositive_InaccurateData, FalsePositive_IncorrectAlertLogic, TruePositive_SuspiciousActivity and Undetermined.
	// +kubebuilder:validation:Optional
	classification?: null | string @go(Classification,*string)

	// The comment why the incident is to be closed.
	// +kubebuilder:validation:Optional
	classificationComment?: null | string @go(ClassificationComment,*string)

	// Specifies a list of labels to add to the incident.
	// +kubebuilder:validation:Optional
	labels?: [...null | string] @go(Labels,[]*string)

	// The execution order of this action.
	// +kubebuilder:validation:Optional
	order?: null | float64 @go(Order,*float64)

	// The object ID of the entity this incident is assigned to.
	// +kubebuilder:validation:Optional
	ownerId?: null | string @go(OwnerID,*string)

	// The severity to add to the incident. Possible values are High, Informational, Low and Medium.
	// +kubebuilder:validation:Optional
	severity?: null | string @go(Severity,*string)

	// The status to set to the incident. Possible values are: Active, Closed, New.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)
}

#ActionPlaybookInitParameters: {
	// The ID of the Logic App that defines the playbook's logic.
	logicAppId?: null | string @go(LogicAppID,*string)

	// The execution order of this action.
	order?: null | float64 @go(Order,*float64)

	// The ID of the Tenant that owns the playbook.
	tenantId?: null | string @go(TenantID,*string)
}

#ActionPlaybookObservation: {
	// The ID of the Logic App that defines the playbook's logic.
	logicAppId?: null | string @go(LogicAppID,*string)

	// The execution order of this action.
	order?: null | float64 @go(Order,*float64)

	// The ID of the Tenant that owns the playbook.
	tenantId?: null | string @go(TenantID,*string)
}

#ActionPlaybookParameters: {
	// The ID of the Logic App that defines the playbook's logic.
	// +kubebuilder:validation:Optional
	logicAppId?: null | string @go(LogicAppID,*string)

	// The execution order of this action.
	// +kubebuilder:validation:Optional
	order?: null | float64 @go(Order,*float64)

	// The ID of the Tenant that owns the playbook.
	// +kubebuilder:validation:Optional
	tenantId?: null | string @go(TenantID,*string)
}

#ConditionInitParameters: {
	// The operator to use for evaluate the condition. Possible values include: Equals, NotEquals, Contains, NotContains, StartsWith, NotStartsWith, EndsWith, NotEndsWith.
	operator?: null | string @go(Operator,*string)

	// The property to use for evaluate the condition. Possible values include: AccountAadTenantId, AccountAadUserId, AccountNTDomain, AccountName, AccountObjectGuid, AccountPUID, AccountSid, AccountUPNSuffix, AzureResourceResourceId, AzureResourceSubscriptionId, CloudApplicationAppId, CloudApplicationAppName, DNSDomainName, FileDirectory, FileHashValue, FileName, HostAzureID, HostNTDomain, HostName, HostNetBiosName, HostOSVersion, IPAddress, IncidentDescription, IncidentProviderName, IncidentRelatedAnalyticRuleIds, IncidentSeverity, IncidentStatus, IncidentTactics, IncidentTitle, IoTDeviceId, IoTDeviceModel, IoTDeviceName, IoTDeviceOperatingSystem, IoTDeviceType, IoTDeviceVendor, MailMessageDeliveryAction, MailMessageDeliveryLocation, MailMessageP1Sender, MailMessageP2Sender, MailMessageRecipient, MailMessageSenderIP, MailMessageSubject, MailboxDisplayName, MailboxPrimaryAddress, MailboxUPN, MalwareCategory, MalwareName, ProcessCommandLine, ProcessId, RegistryKey, RegistryValueData, Url.
	property?: null | string @go(Property,*string)

	// Specifies a list of values to use for evaluate the condition.
	values?: [...null | string] @go(Values,[]*string)
}

#ConditionObservation: {
	// The operator to use for evaluate the condition. Possible values include: Equals, NotEquals, Contains, NotContains, StartsWith, NotStartsWith, EndsWith, NotEndsWith.
	operator?: null | string @go(Operator,*string)

	// The property to use for evaluate the condition. Possible values include: AccountAadTenantId, AccountAadUserId, AccountNTDomain, AccountName, AccountObjectGuid, AccountPUID, AccountSid, AccountUPNSuffix, AzureResourceResourceId, AzureResourceSubscriptionId, CloudApplicationAppId, CloudApplicationAppName, DNSDomainName, FileDirectory, FileHashValue, FileName, HostAzureID, HostNTDomain, HostName, HostNetBiosName, HostOSVersion, IPAddress, IncidentDescription, IncidentProviderName, IncidentRelatedAnalyticRuleIds, IncidentSeverity, IncidentStatus, IncidentTactics, IncidentTitle, IoTDeviceId, IoTDeviceModel, IoTDeviceName, IoTDeviceOperatingSystem, IoTDeviceType, IoTDeviceVendor, MailMessageDeliveryAction, MailMessageDeliveryLocation, MailMessageP1Sender, MailMessageP2Sender, MailMessageRecipient, MailMessageSenderIP, MailMessageSubject, MailboxDisplayName, MailboxPrimaryAddress, MailboxUPN, MalwareCategory, MalwareName, ProcessCommandLine, ProcessId, RegistryKey, RegistryValueData, Url.
	property?: null | string @go(Property,*string)

	// Specifies a list of values to use for evaluate the condition.
	values?: [...null | string] @go(Values,[]*string)
}

#ConditionParameters: {
	// The operator to use for evaluate the condition. Possible values include: Equals, NotEquals, Contains, NotContains, StartsWith, NotStartsWith, EndsWith, NotEndsWith.
	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// The property to use for evaluate the condition. Possible values include: AccountAadTenantId, AccountAadUserId, AccountNTDomain, AccountName, AccountObjectGuid, AccountPUID, AccountSid, AccountUPNSuffix, AzureResourceResourceId, AzureResourceSubscriptionId, CloudApplicationAppId, CloudApplicationAppName, DNSDomainName, FileDirectory, FileHashValue, FileName, HostAzureID, HostNTDomain, HostName, HostNetBiosName, HostOSVersion, IPAddress, IncidentDescription, IncidentProviderName, IncidentRelatedAnalyticRuleIds, IncidentSeverity, IncidentStatus, IncidentTactics, IncidentTitle, IoTDeviceId, IoTDeviceModel, IoTDeviceName, IoTDeviceOperatingSystem, IoTDeviceType, IoTDeviceVendor, MailMessageDeliveryAction, MailMessageDeliveryLocation, MailMessageP1Sender, MailMessageP2Sender, MailMessageRecipient, MailMessageSenderIP, MailMessageSubject, MailboxDisplayName, MailboxPrimaryAddress, MailboxUPN, MalwareCategory, MalwareName, ProcessCommandLine, ProcessId, RegistryKey, RegistryValueData, Url.
	// +kubebuilder:validation:Optional
	property?: null | string @go(Property,*string)

	// Specifies a list of values to use for evaluate the condition.
	// +kubebuilder:validation:Optional
	values: [...null | string] @go(Values,[]*string)
}

#SentinelAutomationRuleInitParameters: {
	// One or more action_incident blocks as defined below.
	actionIncident?: [...#ActionIncidentInitParameters] @go(ActionIncident,[]ActionIncidentInitParameters)

	// One or more action_playbook blocks as defined below.
	actionPlaybook?: [...#ActionPlaybookInitParameters] @go(ActionPlaybook,[]ActionPlaybookInitParameters)

	// One or more condition blocks as defined below.
	condition?: [...#ConditionInitParameters] @go(Condition,[]ConditionInitParameters)

	// A JSON array of one or more condition JSON objects as is defined here.
	conditionJson?: null | string @go(ConditionJSON,*string)

	// The display name which should be used for this Sentinel Automation Rule.
	displayName?: null | string @go(DisplayName,*string)

	// Whether this Sentinel Automation Rule is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The time in RFC3339 format of kind UTC that determines when this Automation Rule should expire and be disabled.
	expiration?: null | string @go(Expiration,*string)

	// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
	name?: null | string @go(Name,*string)

	// The order of this Sentinel Automation Rule. Possible values varies between 1 and 1000.
	order?: null | float64 @go(Order,*float64)

	// Specifies what triggers this automation rule. Possible values are Alerts and Incidents. Defaults to Incidents.
	triggersOn?: null | string @go(TriggersOn,*string)

	// Specifies when will this automation rule be triggered. Possible values are Created and Updated. Defaults to Created.
	triggersWhen?: null | string @go(TriggersWhen,*string)
}

#SentinelAutomationRuleObservation: {
	// One or more action_incident blocks as defined below.
	actionIncident?: [...#ActionIncidentObservation] @go(ActionIncident,[]ActionIncidentObservation)

	// One or more action_playbook blocks as defined below.
	actionPlaybook?: [...#ActionPlaybookObservation] @go(ActionPlaybook,[]ActionPlaybookObservation)

	// One or more condition blocks as defined below.
	condition?: [...#ConditionObservation] @go(Condition,[]ConditionObservation)

	// A JSON array of one or more condition JSON objects as is defined here.
	conditionJson?: null | string @go(ConditionJSON,*string)

	// The display name which should be used for this Sentinel Automation Rule.
	displayName?: null | string @go(DisplayName,*string)

	// Whether this Sentinel Automation Rule is enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// The time in RFC3339 format of kind UTC that determines when this Automation Rule should expire and be disabled.
	expiration?: null | string @go(Expiration,*string)

	// The ID of the Sentinel Automation Rule.
	id?: null | string @go(ID,*string)

	// The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
	name?: null | string @go(Name,*string)

	// The order of this Sentinel Automation Rule. Possible values varies between 1 and 1000.
	order?: null | float64 @go(Order,*float64)

	// Specifies what triggers this automation rule. Possible values are Alerts and Incidents. Defaults to Incidents.
	triggersOn?: null | string @go(TriggersOn,*string)

	// Specifies when will this automation rule be triggered. Possible values are Created and Updated. Defaults to Created.
	triggersWhen?: null | string @go(TriggersWhen,*string)
}

#SentinelAutomationRuleParameters: {
	// One or more action_incident blocks as defined below.
	// +kubebuilder:validation:Optional
	actionIncident?: [...#ActionIncidentParameters] @go(ActionIncident,[]ActionIncidentParameters)

	// One or more action_playbook blocks as defined below.
	// +kubebuilder:validation:Optional
	actionPlaybook?: [...#ActionPlaybookParameters] @go(ActionPlaybook,[]ActionPlaybookParameters)

	// One or more condition blocks as defined below.
	// +kubebuilder:validation:Optional
	condition?: [...#ConditionParameters] @go(Condition,[]ConditionParameters)

	// A JSON array of one or more condition JSON objects as is defined here.
	// +kubebuilder:validation:Optional
	conditionJson?: null | string @go(ConditionJSON,*string)

	// The display name which should be used for this Sentinel Automation Rule.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Whether this Sentinel Automation Rule is enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The time in RFC3339 format of kind UTC that determines when this Automation Rule should expire and be disabled.
	// +kubebuilder:validation:Optional
	expiration?: null | string @go(Expiration,*string)

	// The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/securityinsights/v1beta1.SentinelLogAnalyticsWorkspaceOnboarding
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("workspace_id",false)
	// +kubebuilder:validation:Optional
	logAnalyticsWorkspaceId?: null | string @go(LogAnalyticsWorkspaceID,*string)

	// The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The order of this Sentinel Automation Rule. Possible values varies between 1 and 1000.
	// +kubebuilder:validation:Optional
	order?: null | float64 @go(Order,*float64)

	// Specifies what triggers this automation rule. Possible values are Alerts and Incidents. Defaults to Incidents.
	// +kubebuilder:validation:Optional
	triggersOn?: null | string @go(TriggersOn,*string)

	// Specifies when will this automation rule be triggered. Possible values are Created and Updated. Defaults to Created.
	// +kubebuilder:validation:Optional
	triggersWhen?: null | string @go(TriggersWhen,*string)
}

// SentinelAutomationRuleSpec defines the desired state of SentinelAutomationRule
#SentinelAutomationRuleSpec: {
	forProvider: #SentinelAutomationRuleParameters @go(ForProvider)

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
	initProvider?: #SentinelAutomationRuleInitParameters @go(InitProvider)
}

// SentinelAutomationRuleStatus defines the observed state of SentinelAutomationRule.
#SentinelAutomationRuleStatus: {
	atProvider?: #SentinelAutomationRuleObservation @go(AtProvider)
}

// SentinelAutomationRule is the Schema for the SentinelAutomationRules API. Manages a Sentinel Automation Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SentinelAutomationRule: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.order) || (has(self.initProvider) && has(self.initProvider.order))",message="spec.forProvider.order is a required parameter"
	spec:    #SentinelAutomationRuleSpec   @go(Spec)
	status?: #SentinelAutomationRuleStatus @go(Status)
}

// SentinelAutomationRuleList contains a list of SentinelAutomationRules
#SentinelAutomationRuleList: {
	items: [...#SentinelAutomationRule] @go(Items,[]SentinelAutomationRule)
}
