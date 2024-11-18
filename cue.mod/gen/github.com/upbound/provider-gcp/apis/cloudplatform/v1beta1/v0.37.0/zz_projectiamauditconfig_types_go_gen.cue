// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ProjectIAMAuditConfigAuditLogConfigInitParameters: {
	exemptedMembers?: [...null | string] @go(ExemptedMembers,[]*string)
	logType?: null | string @go(LogType,*string)
}

#ProjectIAMAuditConfigAuditLogConfigObservation: {
	exemptedMembers?: [...null | string] @go(ExemptedMembers,[]*string)
	logType?: null | string @go(LogType,*string)
}

#ProjectIAMAuditConfigAuditLogConfigParameters: {
	// +kubebuilder:validation:Optional
	exemptedMembers?: [...null | string] @go(ExemptedMembers,[]*string)

	// +kubebuilder:validation:Optional
	logType?: null | string @go(LogType,*string)
}

#ProjectIAMAuditConfigInitParameters: {
	auditLogConfig?: [...#ProjectIAMAuditConfigAuditLogConfigInitParameters] @go(AuditLogConfig,[]ProjectIAMAuditConfigAuditLogConfigInitParameters)
	service?: null | string @go(Service,*string)
}

#ProjectIAMAuditConfigObservation: {
	auditLogConfig?: [...#ProjectIAMAuditConfigAuditLogConfigObservation] @go(AuditLogConfig,[]ProjectIAMAuditConfigAuditLogConfigObservation)
	etag?:    null | string @go(Etag,*string)
	id?:      null | string @go(ID,*string)
	project?: null | string @go(Project,*string)
	service?: null | string @go(Service,*string)
}

#ProjectIAMAuditConfigParameters: {
	// +kubebuilder:validation:Optional
	auditLogConfig?: [...#ProjectIAMAuditConfigAuditLogConfigParameters] @go(AuditLogConfig,[]ProjectIAMAuditConfigAuditLogConfigParameters)

	// +crossplane:generate:reference:type=Project
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	service?: null | string @go(Service,*string)
}

// ProjectIAMAuditConfigSpec defines the desired state of ProjectIAMAuditConfig
#ProjectIAMAuditConfigSpec: {
	forProvider: #ProjectIAMAuditConfigParameters @go(ForProvider)

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
	initProvider?: #ProjectIAMAuditConfigInitParameters @go(InitProvider)
}

// ProjectIAMAuditConfigStatus defines the observed state of ProjectIAMAuditConfig.
#ProjectIAMAuditConfigStatus: {
	atProvider?: #ProjectIAMAuditConfigObservation @go(AtProvider)
}

// ProjectIAMAuditConfig is the Schema for the ProjectIAMAuditConfigs API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectIAMAuditConfig: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.auditLogConfig) || (has(self.initProvider) && has(self.initProvider.auditLogConfig))",message="spec.forProvider.auditLogConfig is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.service) || (has(self.initProvider) && has(self.initProvider.service))",message="spec.forProvider.service is a required parameter"
	spec:    #ProjectIAMAuditConfigSpec   @go(Spec)
	status?: #ProjectIAMAuditConfigStatus @go(Status)
}

// ProjectIAMAuditConfigList contains a list of ProjectIAMAuditConfigs
#ProjectIAMAuditConfigList: {
	items: [...#ProjectIAMAuditConfig] @go(Items,[]ProjectIAMAuditConfig)
}
