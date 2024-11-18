// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/iotcentral/v1beta1

package v1beta1

#ApplicationInitParameters: {
	// A display_name name. Custom display name for the IoT Central application. Default is resource name.
	displayName?: null | string @go(DisplayName,*string)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Whether public network access is allowed for the IoT Central Application. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// A sku name. Possible values is ST0, ST1, ST2, Default value is ST1
	sku?: null | string @go(Sku,*string)

	// A sub_domain name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
	subDomain?: null | string @go(SubDomain,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A template name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created.
	template?: null | string @go(Template,*string)
}

#ApplicationObservation: {
	// A display_name name. Custom display name for the IoT Central application. Default is resource name.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the IoT Central Application.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Whether public network access is allowed for the IoT Central Application. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A sku name. Possible values is ST0, ST1, ST2, Default value is ST1
	sku?: null | string @go(Sku,*string)

	// A sub_domain name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
	subDomain?: null | string @go(SubDomain,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A template name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created.
	template?: null | string @go(Template,*string)
}

#ApplicationParameters: {
	// A display_name name. Custom display name for the IoT Central application. Default is resource name.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Whether public network access is allowed for the IoT Central Application. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A sku name. Possible values is ST0, ST1, ST2, Default value is ST1
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A sub_domain name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
	// +kubebuilder:validation:Optional
	subDomain?: null | string @go(SubDomain,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A template name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	template?: null | string @go(Template,*string)
}

#IdentityInitParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is SystemAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// ApplicationSpec defines the desired state of Application
#ApplicationSpec: {
	forProvider: #ApplicationParameters @go(ForProvider)

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
	initProvider?: #ApplicationInitParameters @go(InitProvider)
}

// ApplicationStatus defines the observed state of Application.
#ApplicationStatus: {
	atProvider?: #ApplicationObservation @go(AtProvider)
}

// Application is the Schema for the Applications API. Manages an IotCentral Application
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Application: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.subDomain) || has(self.initProvider.subDomain)",message="subDomain is a required parameter"
	spec:    #ApplicationSpec   @go(Spec)
	status?: #ApplicationStatus @go(Status)
}

// ApplicationList contains a list of Applications
#ApplicationList: {
	items: [...#Application] @go(Items,[]Application)
}
