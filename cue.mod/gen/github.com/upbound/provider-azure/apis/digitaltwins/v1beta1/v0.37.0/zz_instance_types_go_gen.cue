// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/digitaltwins/v1beta1

package v1beta1

#IdentityInitParameters: {
	// The type of Managed Service Identity that is configured on this Digital Twins instance. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// The ID of the Digital Twins instance.
	principalId?: null | string @go(PrincipalID,*string)

	// The ID of the Digital Twins instance.
	tenantId?: null | string @go(TenantID,*string)

	// The type of Managed Service Identity that is configured on this Digital Twins instance. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// The type of Managed Service Identity that is configured on this Digital Twins instance. The only possible value is SystemAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#InstanceInitParameters: {
	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags which should be assigned to the Digital Twins instance.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#InstanceObservation: {
	// The API endpoint to work with this Digital Twins instance.
	hostName?: null | string @go(HostName,*string)

	// The ID of the Digital Twins instance.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Digital Twins instance.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#InstanceParameters: {
	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Digital Twins instance.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// InstanceSpec defines the desired state of Instance
#InstanceSpec: {
	forProvider: #InstanceParameters @go(ForProvider)

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
	initProvider?: #InstanceInitParameters @go(InitProvider)
}

// InstanceStatus defines the observed state of Instance.
#InstanceStatus: {
	atProvider?: #InstanceObservation @go(AtProvider)
}

// Instance is the Schema for the Instances API. Manages a Digital Twins instance.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Instance: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #InstanceSpec   @go(Spec)
	status?: #InstanceStatus @go(Status)
}

// InstanceList contains a list of Instances
#InstanceList: {
	items: [...#Instance] @go(Items,[]Instance)
}
