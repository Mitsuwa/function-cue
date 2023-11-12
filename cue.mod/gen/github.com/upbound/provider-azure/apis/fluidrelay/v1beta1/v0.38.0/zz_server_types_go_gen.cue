// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/fluidrelay/v1beta1

package v1beta1

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are SystemAssigned,UserAssigned and SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID for the Service Principal associated with the Identity of this Fluid Relay Server.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID for the Service Principal associated with the Identity of this Fluid Relay Server.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are SystemAssigned,UserAssigned and SystemAssigned, UserAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are SystemAssigned,UserAssigned and SystemAssigned, UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#ServerInitParameters: {
	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
	location?: null | string @go(Location,*string)

	// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
	name?: null | string @go(Name,*string)

	// Sku of the storage associated with the resource, Possible values are standard and basic. Changing this forces a new Fluid Relay Server to be created.
	storageSku?: null | string @go(StorageSku,*string)

	// A mapping of tags which should be assigned to the Fluid Relay Server.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ServerObservation: {
	// The Fluid tenantId for this server.
	frsTenantId?: null | string @go(FrsTenantID,*string)

	// The ID of the Fluid Relay Server.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
	location?: null | string @go(Location,*string)

	// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
	name?: null | string @go(Name,*string)

	// An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, more details.
	ordererEndpoints?: [...null | string] @go(OrdererEndpoints,[]*string)

	// The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// An array of service endpoints for this Fluid Relay Server.
	serviceEndpoints?: [...null | string] @go(ServiceEndpoints,[]*string)

	// An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, more details.
	storageEndpoints?: [...null | string] @go(StorageEndpoints,[]*string)

	// Sku of the storage associated with the resource, Possible values are standard and basic. Changing this forces a new Fluid Relay Server to be created.
	storageSku?: null | string @go(StorageSku,*string)

	// A mapping of tags which should be assigned to the Fluid Relay Server.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ServerParameters: {
	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Sku of the storage associated with the resource, Possible values are standard and basic. Changing this forces a new Fluid Relay Server to be created.
	// +kubebuilder:validation:Optional
	storageSku?: null | string @go(StorageSku,*string)

	// A mapping of tags which should be assigned to the Fluid Relay Server.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ServerSpec defines the desired state of Server
#ServerSpec: {
	forProvider: #ServerParameters @go(ForProvider)

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
	initProvider?: #ServerInitParameters @go(InitProvider)
}

// ServerStatus defines the observed state of Server.
#ServerStatus: {
	atProvider?: #ServerObservation @go(AtProvider)
}

// Server is the Schema for the Servers API. Manages a Fluid Relay Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Server: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #ServerSpec   @go(Spec)
	status?: #ServerStatus @go(Status)
}

// ServerList contains a list of Servers
#ServerList: {
	items: [...#Server] @go(Items,[]Server)
}
