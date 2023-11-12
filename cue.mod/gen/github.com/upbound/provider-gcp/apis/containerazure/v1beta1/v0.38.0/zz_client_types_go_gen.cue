// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/containerazure/v1beta1

package v1beta1

#ClientInitParameters: {
	// The Azure Active Directory Application ID.
	applicationId?: null | string @go(ApplicationID,*string)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// The Azure Active Directory Tenant ID.
	tenantId?: null | string @go(TenantID,*string)
}

#ClientObservation: {
	// The Azure Active Directory Application ID.
	applicationId?: null | string @go(ApplicationID,*string)

	// Output only. The PEM encoded x509 certificate.
	certificate?: null | string @go(Certificate,*string)

	// Output only. The time at which this resource was created.
	createTime?: null | string @go(CreateTime,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/azureClients/{{name}}
	id?: null | string @go(ID,*string)

	// The location for the resource
	location?: null | string @go(Location,*string)

	// The project for the resource
	project?: null | string @go(Project,*string)

	// The Azure Active Directory Tenant ID.
	tenantId?: null | string @go(TenantID,*string)

	// Output only. A globally unique identifier for the client.
	uid?: null | string @go(UID,*string)
}

#ClientParameters: {
	// The Azure Active Directory Application ID.
	// +kubebuilder:validation:Optional
	applicationId?: null | string @go(ApplicationID,*string)

	// The location for the resource
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// The project for the resource
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The Azure Active Directory Tenant ID.
	// +kubebuilder:validation:Optional
	tenantId?: null | string @go(TenantID,*string)
}

// ClientSpec defines the desired state of Client
#ClientSpec: {
	forProvider: #ClientParameters @go(ForProvider)

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
	initProvider?: #ClientInitParameters @go(InitProvider)
}

// ClientStatus defines the observed state of Client.
#ClientStatus: {
	atProvider?: #ClientObservation @go(AtProvider)
}

// Client is the Schema for the Clients API. AzureClient resources hold client authentication information needed by the Anthos Multi-Cloud API to manage Azure resources on your Azure subscription.When an AzureCluster is created, an AzureClient resource needs to be provided and all operations on Azure resources associated to that cluster will authenticate to Azure services using the given client.AzureClient resources are immutable and cannot be modified upon creation.Each AzureClient resource is bound to a single Azure Active Directory Application and tenant.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Client: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.applicationId) || (has(self.initProvider) && has(self.initProvider.applicationId))",message="spec.forProvider.applicationId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tenantId) || (has(self.initProvider) && has(self.initProvider.tenantId))",message="spec.forProvider.tenantId is a required parameter"
	spec:    #ClientSpec   @go(Spec)
	status?: #ClientStatus @go(Status)
}

// ClientList contains a list of Clients
#ClientList: {
	items: [...#Client] @go(Items,[]Client)
}
