// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/deviceupdate/v1beta1

package v1beta1

#IOTHubDeviceUpdateAccountObservation: {
	// The API host name of the IoT Hub Device Update Account.
	hostName?: null | string @go(HostName,*string)

	// The ID of the IoT Hub Device Update Account.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are true and false. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Sku of the IoT Hub Device Update Account. Possible values are Free and Standard. Defaults to Standard.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags which should be assigned to the IoT Hub Device Update Account.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IOTHubDeviceUpdateAccountParameters: {
	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are true and false. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Sku of the IoT Hub Device Update Account. Possible values are Free and Standard. Defaults to Standard.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags which should be assigned to the IoT Hub Device Update Account.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IdentityObservation: {
	// A list of User Assigned Managed Identity IDs to be assigned to this IoT Hub Device Update Account.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Hub Device Update Account. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// A list of User Assigned Managed Identity IDs to be assigned to this IoT Hub Device Update Account.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this IoT Hub Device Update Account. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

// IOTHubDeviceUpdateAccountSpec defines the desired state of IOTHubDeviceUpdateAccount
#IOTHubDeviceUpdateAccountSpec: {
	forProvider: #IOTHubDeviceUpdateAccountParameters @go(ForProvider)
}

// IOTHubDeviceUpdateAccountStatus defines the observed state of IOTHubDeviceUpdateAccount.
#IOTHubDeviceUpdateAccountStatus: {
	atProvider?: #IOTHubDeviceUpdateAccountObservation @go(AtProvider)
}

// IOTHubDeviceUpdateAccount is the Schema for the IOTHubDeviceUpdateAccounts API. Manages an IoT Hub Device Update Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IOTHubDeviceUpdateAccount: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #IOTHubDeviceUpdateAccountSpec   @go(Spec)
	status?: #IOTHubDeviceUpdateAccountStatus @go(Status)
}

// IOTHubDeviceUpdateAccountList contains a list of IOTHubDeviceUpdateAccounts
#IOTHubDeviceUpdateAccountList: {
	items: [...#IOTHubDeviceUpdateAccount] @go(Items,[]IOTHubDeviceUpdateAccount)
}
