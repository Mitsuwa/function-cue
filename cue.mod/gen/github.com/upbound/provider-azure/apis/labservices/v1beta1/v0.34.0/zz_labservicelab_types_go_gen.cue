// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/labservices/v1beta1

package v1beta1

#AdminUserObservation: {
	// The username to use when signing in to Lab Service Lab VMs.
	username?: null | string @go(Username,*string)
}

#AdminUserParameters: {
	// The username to use when signing in to Lab Service Lab VMs.
	// +kubebuilder:validation:Required
	username?: null | string @go(Username,*string)
}

#AutoShutdownObservation: {
	// The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	disconnectDelay?: null | string @go(DisconnectDelay,*string)

	// The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	idleDelay?: null | string @go(IdleDelay,*string)

	// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
	noConnectDelay?: null | string @go(NoConnectDelay,*string)

	// A VM will get shutdown when it has idled for a period of time. Possible values are LowUsage and UserAbsence.
	shutdownOnIdle?: null | string @go(ShutdownOnIdle,*string)
}

#AutoShutdownParameters: {
	// The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	disconnectDelay?: null | string @go(DisconnectDelay,*string)

	// The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	idleDelay?: null | string @go(IdleDelay,*string)

	// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	noConnectDelay?: null | string @go(NoConnectDelay,*string)

	// A VM will get shutdown when it has idled for a period of time. Possible values are LowUsage and UserAbsence.
	// +kubebuilder:validation:Optional
	shutdownOnIdle?: null | string @go(ShutdownOnIdle,*string)
}

#ConnectionSettingObservation: {
	// The enabled access level for Client Access over RDP. Possible value is Public.
	clientRdpAccess?: null | string @go(ClientRdpAccess,*string)

	// The enabled access level for Client Access over SSH. Possible value is Public.
	clientSshAccess?: null | string @go(ClientSSHAccess,*string)
}

#ConnectionSettingParameters: {
	// The enabled access level for Client Access over RDP. Possible value is Public.
	// +kubebuilder:validation:Optional
	clientRdpAccess?: null | string @go(ClientRdpAccess,*string)

	// The enabled access level for Client Access over SSH. Possible value is Public.
	// +kubebuilder:validation:Optional
	clientSshAccess?: null | string @go(ClientSSHAccess,*string)
}

#ImageReferenceObservation: {
	// The resource ID of the image. Changing this forces a new resource to be created.
	id?: null | string @go(ID,*string)

	// The image offer if applicable. Changing this forces a new resource to be created.
	offer?: null | string @go(Offer,*string)

	// The image publisher. Changing this forces a new resource to be created.
	publisher?: null | string @go(Publisher,*string)

	// A sku block as defined below.
	sku?: null | string @go(Sku,*string)

	// The image version specified on creation. Changing this forces a new resource to be created.
	version?: null | string @go(Version,*string)
}

#ImageReferenceParameters: {
	// The resource ID of the image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// The image offer if applicable. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	offer?: null | string @go(Offer,*string)

	// The image publisher. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publisher?: null | string @go(Publisher,*string)

	// A sku block as defined below.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// The image version specified on creation. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#LabServiceLabObservation: {
	// An auto_shutdown block as defined below.
	autoShutdown?: [...#AutoShutdownObservation] @go(AutoShutdown,[]AutoShutdownObservation)

	// A connection_setting block as defined below.
	connectionSetting?: [...#ConnectionSettingObservation] @go(ConnectionSetting,[]ConnectionSettingObservation)

	// The description of the Lab Service Lab.
	description?: null | string @go(Description,*string)

	// The ID of the Lab Service Lab.
	id?: null | string @go(ID,*string)

	// The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via labs.azure.com.
	labPlanId?: null | string @go(LabPlanID,*string)

	// The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A network block as defined below.
	network?: [...#NetworkObservation] @go(Network,[]NetworkObservation)

	// The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A roster block as defined below.
	roster?: [...#RosterObservation] @go(Roster,[]RosterObservation)

	// A security block as defined below.
	security?: [...#SecurityObservation] @go(Security,[]SecurityObservation)

	// A mapping of tags which should be assigned to the Lab Service Lab.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The title of the Lab Service Lab.
	title?: null | string @go(Title,*string)

	// A virtual_machine block as defined below.
	virtualMachine?: [...#VirtualMachineObservation] @go(VirtualMachine,[]VirtualMachineObservation)
}

#LabServiceLabParameters: {
	// An auto_shutdown block as defined below.
	// +kubebuilder:validation:Optional
	autoShutdown?: [...#AutoShutdownParameters] @go(AutoShutdown,[]AutoShutdownParameters)

	// A connection_setting block as defined below.
	// +kubebuilder:validation:Optional
	connectionSetting?: [...#ConnectionSettingParameters] @go(ConnectionSetting,[]ConnectionSettingParameters)

	// The description of the Lab Service Lab.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via labs.azure.com.
	// +kubebuilder:validation:Optional
	labPlanId?: null | string @go(LabPlanID,*string)

	// The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A network block as defined below.
	// +kubebuilder:validation:Optional
	network?: [...#NetworkParameters] @go(Network,[]NetworkParameters)

	// The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A roster block as defined below.
	// +kubebuilder:validation:Optional
	roster?: [...#RosterParameters] @go(Roster,[]RosterParameters)

	// A security block as defined below.
	// +kubebuilder:validation:Optional
	security?: [...#SecurityParameters] @go(Security,[]SecurityParameters)

	// A mapping of tags which should be assigned to the Lab Service Lab.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The title of the Lab Service Lab.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)

	// A virtual_machine block as defined below.
	// +kubebuilder:validation:Optional
	virtualMachine?: [...#VirtualMachineParameters] @go(VirtualMachine,[]VirtualMachineParameters)
}

#NetworkObservation: {
	// The resource ID of the Load Balancer for the network profile of the Lab Service Lab.
	loadBalancerId?: null | string @go(LoadBalancerID,*string)

	// The resource ID of the Public IP for the network profile of the Lab Service Lab.
	publicIpId?: null | string @go(PublicIPID,*string)

	// The resource ID of the Subnet for the network profile of the Lab Service Lab.
	subnetId?: null | string @go(SubnetID,*string)
}

#NetworkParameters: {
	// The resource ID of the Subnet for the network profile of the Lab Service Lab.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

#NonAdminUserObservation: {
	// The username to use when signing in to Lab Service Lab VMs.
	username?: null | string @go(Username,*string)
}

#NonAdminUserParameters: {
	// The username to use when signing in to Lab Service Lab VMs.
	// +kubebuilder:validation:Required
	username?: null | string @go(Username,*string)
}

#RosterObservation: {
	// The AAD group ID which this Lab Service Lab roster is populated from.
	activeDirectoryGroupId?: null | string @go(ActiveDirectoryGroupID,*string)

	// The base URI identifying the lms instance.
	lmsInstance?: null | string @go(LmsInstance,*string)

	// The unique id of the Azure Lab Service tool in the lms.
	ltiClientId?: null | string @go(LtiClientID,*string)

	// The unique context identifier for the Lab Service Lab in the lms.
	ltiContextId?: null | string @go(LtiContextID,*string)

	// The URI of the names and roles service endpoint on the lms for the class attached to this Lab Service Lab.
	ltiRosterEndpoint?: null | string @go(LtiRosterEndpoint,*string)
}

#RosterParameters: {
	// The AAD group ID which this Lab Service Lab roster is populated from.
	// +kubebuilder:validation:Optional
	activeDirectoryGroupId?: null | string @go(ActiveDirectoryGroupID,*string)

	// The base URI identifying the lms instance.
	// +kubebuilder:validation:Optional
	lmsInstance?: null | string @go(LmsInstance,*string)

	// The unique id of the Azure Lab Service tool in the lms.
	// +kubebuilder:validation:Optional
	ltiClientId?: null | string @go(LtiClientID,*string)

	// The unique context identifier for the Lab Service Lab in the lms.
	// +kubebuilder:validation:Optional
	ltiContextId?: null | string @go(LtiContextID,*string)

	// The URI of the names and roles service endpoint on the lms for the class attached to this Lab Service Lab.
	// +kubebuilder:validation:Optional
	ltiRosterEndpoint?: null | string @go(LtiRosterEndpoint,*string)
}

#SecurityObservation: {
	// Is open access enabled to allow any user or only specified users to register to a Lab Service Lab?
	openAccessEnabled?: null | bool @go(OpenAccessEnabled,*bool)

	// The registration code for the Lab Service Lab.
	registrationCode?: null | string @go(RegistrationCode,*string)
}

#SecurityParameters: {
	// Is open access enabled to allow any user or only specified users to register to a Lab Service Lab?
	// +kubebuilder:validation:Required
	openAccessEnabled?: null | bool @go(OpenAccessEnabled,*bool)
}

#SkuObservation: {
	// The capacity for the SKU. Possible values are between 0 and 400.
	capacity?: null | float64 @go(Capacity,*float64)

	// The name of the SKU. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#SkuParameters: {
	// The capacity for the SKU. Possible values are between 0 and 400.
	// +kubebuilder:validation:Required
	capacity?: null | float64 @go(Capacity,*float64)

	// The name of the SKU. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#VirtualMachineObservation: {
	// Is flagged to pre-install dedicated GPU drivers? Defaults to false. Changing this forces a new resource to be created.
	additionalCapabilityGpuDriversInstalled?: null | bool @go(AdditionalCapabilityGpuDriversInstalled,*bool)

	// An admin_user block as defined below.
	adminUser?: [...#AdminUserObservation] @go(AdminUser,[]AdminUserObservation)

	// The create option to indicate what Lab Service Lab VMs are created from. Possible values are Image and TemplateVM. Defaults to Image. Changing this forces a new resource to be created.
	createOption?: null | string @go(CreateOption,*string)

	// An image_reference block as defined below.
	imageReference?: [...#ImageReferenceObservation] @go(ImageReference,[]ImageReferenceObservation)

	// A non_admin_user block as defined below.
	nonAdminUser?: [...#NonAdminUserObservation] @go(NonAdminUser,[]NonAdminUserObservation)

	// Is the shared password enabled with the same password for all user VMs? Defaults to false. Changing this forces a new resource to be created.
	sharedPasswordEnabled?: null | bool @go(SharedPasswordEnabled,*bool)

	// A sku block as defined below.
	sku?: [...#SkuObservation] @go(Sku,[]SkuObservation)

	// The initial quota allocated to each Lab Service Lab user. Defaults to PT0S. This value must be formatted as an ISO 8601 string.
	usageQuota?: null | string @go(UsageQuota,*string)
}

#VirtualMachineParameters: {
	// Is flagged to pre-install dedicated GPU drivers? Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	additionalCapabilityGpuDriversInstalled?: null | bool @go(AdditionalCapabilityGpuDriversInstalled,*bool)

	// An admin_user block as defined below.
	// +kubebuilder:validation:Required
	adminUser: [...#AdminUserParameters] @go(AdminUser,[]AdminUserParameters)

	// The create option to indicate what Lab Service Lab VMs are created from. Possible values are Image and TemplateVM. Defaults to Image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	createOption?: null | string @go(CreateOption,*string)

	// An image_reference block as defined below.
	// +kubebuilder:validation:Required
	imageReference: [...#ImageReferenceParameters] @go(ImageReference,[]ImageReferenceParameters)

	// A non_admin_user block as defined below.
	// +kubebuilder:validation:Optional
	nonAdminUser?: [...#NonAdminUserParameters] @go(NonAdminUser,[]NonAdminUserParameters)

	// Is the shared password enabled with the same password for all user VMs? Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	sharedPasswordEnabled?: null | bool @go(SharedPasswordEnabled,*bool)

	// A sku block as defined below.
	// +kubebuilder:validation:Required
	sku: [...#SkuParameters] @go(Sku,[]SkuParameters)

	// The initial quota allocated to each Lab Service Lab user. Defaults to PT0S. This value must be formatted as an ISO 8601 string.
	// +kubebuilder:validation:Optional
	usageQuota?: null | string @go(UsageQuota,*string)
}

// LabServiceLabSpec defines the desired state of LabServiceLab
#LabServiceLabSpec: {
	forProvider: #LabServiceLabParameters @go(ForProvider)
}

// LabServiceLabStatus defines the observed state of LabServiceLab.
#LabServiceLabStatus: {
	atProvider?: #LabServiceLabObservation @go(AtProvider)
}

// LabServiceLab is the Schema for the LabServiceLabs API. Manages a Lab Service Lab.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LabServiceLab: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.security)",message="security is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.title)",message="title is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.virtualMachine)",message="virtualMachine is a required parameter"
	spec:    #LabServiceLabSpec   @go(Spec)
	status?: #LabServiceLabStatus @go(Status)
}

// LabServiceLabList contains a list of LabServiceLabs
#LabServiceLabList: {
	items: [...#LabServiceLab] @go(Items,[]LabServiceLab)
}
