// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/labservices/v1beta1

package v1beta1

#DefaultAutoShutdownObservation: {
	// The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	disconnectDelay?: null | string @go(DisconnectDelay,*string)

	// The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	idleDelay?: null | string @go(IdleDelay,*string)

	// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
	noConnectDelay?: null | string @go(NoConnectDelay,*string)

	// Will a VM get shutdown when it has idled for a period of time? Possible values are LowUsage and UserAbsence.
	shutdownOnIdle?: null | string @go(ShutdownOnIdle,*string)
}

#DefaultAutoShutdownParameters: {
	// The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	disconnectDelay?: null | string @go(DisconnectDelay,*string)

	// The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	idleDelay?: null | string @go(IdleDelay,*string)

	// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	noConnectDelay?: null | string @go(NoConnectDelay,*string)

	// Will a VM get shutdown when it has idled for a period of time? Possible values are LowUsage and UserAbsence.
	// +kubebuilder:validation:Optional
	shutdownOnIdle?: null | string @go(ShutdownOnIdle,*string)
}

#DefaultConnectionObservation: {
	// The enabled access level for Client Access over RDP. Possible values are Private and Public.
	clientRdpAccess?: null | string @go(ClientRdpAccess,*string)

	// The enabled access level for Client Access over SSH. Possible values are Private and Public.
	clientSshAccess?: null | string @go(ClientSSHAccess,*string)

	// The enabled access level for Web Access over RDP. Possible values are Private and Public.
	webRdpAccess?: null | string @go(WebRdpAccess,*string)

	// The enabled access level for Web Access over SSH. Possible values are Private and Public.
	webSshAccess?: null | string @go(WebSSHAccess,*string)
}

#DefaultConnectionParameters: {
	// The enabled access level for Client Access over RDP. Possible values are Private and Public.
	// +kubebuilder:validation:Optional
	clientRdpAccess?: null | string @go(ClientRdpAccess,*string)

	// The enabled access level for Client Access over SSH. Possible values are Private and Public.
	// +kubebuilder:validation:Optional
	clientSshAccess?: null | string @go(ClientSSHAccess,*string)

	// The enabled access level for Web Access over RDP. Possible values are Private and Public.
	// +kubebuilder:validation:Optional
	webRdpAccess?: null | string @go(WebRdpAccess,*string)

	// The enabled access level for Web Access over SSH. Possible values are Private and Public.
	// +kubebuilder:validation:Optional
	webSshAccess?: null | string @go(WebSSHAccess,*string)
}

#LabServicePlanObservation: {
	// The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between 1 and 28.
	allowedRegions?: [...null | string] @go(AllowedRegions,[]*string)

	// A default_auto_shutdown block as defined below.
	defaultAutoShutdown?: [...#DefaultAutoShutdownObservation] @go(DefaultAutoShutdown,[]DefaultAutoShutdownObservation)

	// A default_connection block as defined below.
	defaultConnection?: [...#DefaultConnectionObservation] @go(DefaultConnection,[]DefaultConnectionObservation)

	// The resource ID of the Subnet for the Lab Service Plan network profile.
	defaultNetworkSubnetId?: null | string @go(DefaultNetworkSubnetID,*string)

	// The ID of the Lab Service Plan.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs.
	sharedGalleryId?: null | string @go(SharedGalleryID,*string)

	// A support block as defined below.
	support?: [...#SupportObservation] @go(Support,[]SupportObservation)

	// A mapping of tags which should be assigned to the Lab Service Plan.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#LabServicePlanParameters: {
	// The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between 1 and 28.
	// +kubebuilder:validation:Optional
	allowedRegions?: [...null | string] @go(AllowedRegions,[]*string)

	// A default_auto_shutdown block as defined below.
	// +kubebuilder:validation:Optional
	defaultAutoShutdown?: [...#DefaultAutoShutdownParameters] @go(DefaultAutoShutdown,[]DefaultAutoShutdownParameters)

	// A default_connection block as defined below.
	// +kubebuilder:validation:Optional
	defaultConnection?: [...#DefaultConnectionParameters] @go(DefaultConnection,[]DefaultConnectionParameters)

	// The resource ID of the Subnet for the Lab Service Plan network profile.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	defaultNetworkSubnetId?: null | string @go(DefaultNetworkSubnetID,*string)

	// The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs.
	// +kubebuilder:validation:Optional
	sharedGalleryId?: null | string @go(SharedGalleryID,*string)

	// A support block as defined below.
	// +kubebuilder:validation:Optional
	support?: [...#SupportParameters] @go(Support,[]SupportParameters)

	// A mapping of tags which should be assigned to the Lab Service Plan.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SupportObservation: {
	// The email address for the support contact.
	email?: null | string @go(Email,*string)

	// The instructions for users of the Lab Service Plan.
	instructions?: null | string @go(Instructions,*string)

	// The phone number for the support contact.
	phone?: null | string @go(Phone,*string)

	// The web address for users of the Lab Service Plan.
	url?: null | string @go(URL,*string)
}

#SupportParameters: {
	// The email address for the support contact.
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)

	// The instructions for users of the Lab Service Plan.
	// +kubebuilder:validation:Optional
	instructions?: null | string @go(Instructions,*string)

	// The phone number for the support contact.
	// +kubebuilder:validation:Optional
	phone?: null | string @go(Phone,*string)

	// The web address for users of the Lab Service Plan.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

// LabServicePlanSpec defines the desired state of LabServicePlan
#LabServicePlanSpec: {
	forProvider: #LabServicePlanParameters @go(ForProvider)
}

// LabServicePlanStatus defines the observed state of LabServicePlan.
#LabServicePlanStatus: {
	atProvider?: #LabServicePlanObservation @go(AtProvider)
}

// LabServicePlan is the Schema for the LabServicePlans API. Manages a Lab Service Plan.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LabServicePlan: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.allowedRegions)",message="allowedRegions is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #LabServicePlanSpec   @go(Spec)
	status?: #LabServicePlanStatus @go(Status)
}

// LabServicePlanList contains a list of LabServicePlans
#LabServicePlanList: {
	items: [...#LabServicePlan] @go(Items,[]LabServicePlan)
}
