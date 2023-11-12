// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/costmanagement/v1beta1

package v1beta1

#CostAnomalyAlertInitParameters: {
	// The display name which should be used for this Cost Anomaly Alert.
	displayName?: null | string @go(DisplayName,*string)

	// Specifies a list of email addresses which the Anomaly Alerts are send to.
	emailAddresses?: [...null | string] @go(EmailAddresses,[]*string)

	// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
	emailSubject?: null | string @go(EmailSubject,*string)

	// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
	message?: null | string @go(Message,*string)
}

#CostAnomalyAlertObservation: {
	// The display name which should be used for this Cost Anomaly Alert.
	displayName?: null | string @go(DisplayName,*string)

	// Specifies a list of email addresses which the Anomaly Alerts are send to.
	emailAddresses?: [...null | string] @go(EmailAddresses,[]*string)

	// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
	emailSubject?: null | string @go(EmailSubject,*string)

	// The ID of the Cost Anomaly Alert.
	id?: null | string @go(ID,*string)

	// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
	message?: null | string @go(Message,*string)
}

#CostAnomalyAlertParameters: {
	// The display name which should be used for this Cost Anomaly Alert.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Specifies a list of email addresses which the Anomaly Alerts are send to.
	// +kubebuilder:validation:Optional
	emailAddresses?: [...null | string] @go(EmailAddresses,[]*string)

	// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
	// +kubebuilder:validation:Optional
	emailSubject?: null | string @go(EmailSubject,*string)

	// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
	// +kubebuilder:validation:Optional
	message?: null | string @go(Message,*string)
}

// CostAnomalyAlertSpec defines the desired state of CostAnomalyAlert
#CostAnomalyAlertSpec: {
	forProvider: #CostAnomalyAlertParameters @go(ForProvider)

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
	initProvider?: #CostAnomalyAlertInitParameters @go(InitProvider)
}

// CostAnomalyAlertStatus defines the observed state of CostAnomalyAlert.
#CostAnomalyAlertStatus: {
	atProvider?: #CostAnomalyAlertObservation @go(AtProvider)
}

// CostAnomalyAlert is the Schema for the CostAnomalyAlerts API. Manages a Cost Anomaly Alert.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#CostAnomalyAlert: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.emailAddresses) || (has(self.initProvider) && has(self.initProvider.emailAddresses))",message="spec.forProvider.emailAddresses is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.emailSubject) || (has(self.initProvider) && has(self.initProvider.emailSubject))",message="spec.forProvider.emailSubject is a required parameter"
	spec:    #CostAnomalyAlertSpec   @go(Spec)
	status?: #CostAnomalyAlertStatus @go(Status)
}

// CostAnomalyAlertList contains a list of CostAnomalyAlerts
#CostAnomalyAlertList: {
	items: [...#CostAnomalyAlert] @go(Items,[]CostAnomalyAlert)
}
