// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/security/v1beta1

package v1beta1

#SecurityCenterAssessmentPolicyObservation: {
	// A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are Unknown, Compute, Data, IdentityAndAccess, IoT and Networking.
	categories?: [...null | string] @go(Categories,[]*string)

	// The description of the Security Center Assessment.
	description?: null | string @go(Description,*string)

	// The user-friendly display name of the Security Center Assessment.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the Security Center Assessment Policy.
	id?: null | string @go(ID,*string)

	// The implementation effort which is used to remediate the Security Center Assessment. Possible values are Low, Moderate and High.
	implementationEffort?: null | string @go(ImplementationEffort,*string)

	// The GUID as the name of the Security Center Assessment Policy.
	name?: null | string @go(Name,*string)

	// The description which is used to mitigate the security issue.
	remediationDescription?: null | string @go(RemediationDescription,*string)

	// The severity level of the Security Center Assessment. Possible values are Low, Medium and High. Defaults to Medium.
	severity?: null | string @go(Severity,*string)

	// A list of the threat impacts for the Security Center Assessment. Possible values are AccountBreach, DataExfiltration, DataSpillage, DenialOfService, ElevationOfPrivilege, MaliciousInsider, MissingCoverage and ThreatResistance.
	threats?: [...null | string] @go(Threats,[]*string)

	// The user impact of the Security Center Assessment. Possible values are Low, Moderate and High.
	userImpact?: null | string @go(UserImpact,*string)
}

#SecurityCenterAssessmentPolicyParameters: {
	// A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are Unknown, Compute, Data, IdentityAndAccess, IoT and Networking.
	// +kubebuilder:validation:Optional
	categories?: [...null | string] @go(Categories,[]*string)

	// The description of the Security Center Assessment.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The user-friendly display name of the Security Center Assessment.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The implementation effort which is used to remediate the Security Center Assessment. Possible values are Low, Moderate and High.
	// +kubebuilder:validation:Optional
	implementationEffort?: null | string @go(ImplementationEffort,*string)

	// The description which is used to mitigate the security issue.
	// +kubebuilder:validation:Optional
	remediationDescription?: null | string @go(RemediationDescription,*string)

	// The severity level of the Security Center Assessment. Possible values are Low, Medium and High. Defaults to Medium.
	// +kubebuilder:validation:Optional
	severity?: null | string @go(Severity,*string)

	// A list of the threat impacts for the Security Center Assessment. Possible values are AccountBreach, DataExfiltration, DataSpillage, DenialOfService, ElevationOfPrivilege, MaliciousInsider, MissingCoverage and ThreatResistance.
	// +kubebuilder:validation:Optional
	threats?: [...null | string] @go(Threats,[]*string)

	// The user impact of the Security Center Assessment. Possible values are Low, Moderate and High.
	// +kubebuilder:validation:Optional
	userImpact?: null | string @go(UserImpact,*string)
}

// SecurityCenterAssessmentPolicySpec defines the desired state of SecurityCenterAssessmentPolicy
#SecurityCenterAssessmentPolicySpec: {
	forProvider: #SecurityCenterAssessmentPolicyParameters @go(ForProvider)
}

// SecurityCenterAssessmentPolicyStatus defines the observed state of SecurityCenterAssessmentPolicy.
#SecurityCenterAssessmentPolicyStatus: {
	atProvider?: #SecurityCenterAssessmentPolicyObservation @go(AtProvider)
}

// SecurityCenterAssessmentPolicy is the Schema for the SecurityCenterAssessmentPolicys API. Manages the Security Center Assessment Metadata for Azure Security Center.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SecurityCenterAssessmentPolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.description)",message="description is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.displayName)",message="displayName is a required parameter"
	spec:    #SecurityCenterAssessmentPolicySpec   @go(Spec)
	status?: #SecurityCenterAssessmentPolicyStatus @go(Status)
}

// SecurityCenterAssessmentPolicyList contains a list of SecurityCenterAssessmentPolicys
#SecurityCenterAssessmentPolicyList: {
	items: [...#SecurityCenterAssessmentPolicy] @go(Items,[]SecurityCenterAssessmentPolicy)
}
