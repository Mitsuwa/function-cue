// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/netapp/v1beta1

package v1beta1

#AccountInitParameters: {
	// A active_directory block as defined below.
	activeDirectory?: [...#ActiveDirectoryInitParameters] @go(ActiveDirectory,[]ActiveDirectoryInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AccountObservation: {
	// A active_directory block as defined below.
	activeDirectory?: [...#ActiveDirectoryObservation] @go(ActiveDirectory,[]ActiveDirectoryObservation)

	// The ID of the NetApp Account.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AccountParameters: {
	// A active_directory block as defined below.
	// +kubebuilder:validation:Optional
	activeDirectory?: [...#ActiveDirectoryParameters] @go(ActiveDirectory,[]ActiveDirectoryParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ActiveDirectoryInitParameters: {
	// A list of DNS server IP addresses for the Active Directory domain. Only allows IPv4 address.
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// The name of the Active Directory domain.
	domain?: null | string @go(Domain,*string)

	// The Organizational Unit (OU) within the Active Directory Domain.
	organizationalUnit?: null | string @go(OrganizationalUnit,*string)

	// The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
	smbServerName?: null | string @go(SMBServerName,*string)

	// The Username of Active Directory Domain Administrator.
	username?: null | string @go(Username,*string)
}

#ActiveDirectoryObservation: {
	// A list of DNS server IP addresses for the Active Directory domain. Only allows IPv4 address.
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// The name of the Active Directory domain.
	domain?: null | string @go(Domain,*string)

	// The Organizational Unit (OU) within the Active Directory Domain.
	organizationalUnit?: null | string @go(OrganizationalUnit,*string)

	// The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
	smbServerName?: null | string @go(SMBServerName,*string)

	// The Username of Active Directory Domain Administrator.
	username?: null | string @go(Username,*string)
}

#ActiveDirectoryParameters: {
	// A list of DNS server IP addresses for the Active Directory domain. Only allows IPv4 address.
	// +kubebuilder:validation:Optional
	dnsServers: [...null | string] @go(DNSServers,[]*string)

	// The name of the Active Directory domain.
	// +kubebuilder:validation:Optional
	domain?: null | string @go(Domain,*string)

	// The Organizational Unit (OU) within the Active Directory Domain.
	// +kubebuilder:validation:Optional
	organizationalUnit?: null | string @go(OrganizationalUnit,*string)

	// The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
	// +kubebuilder:validation:Optional
	smbServerName?: null | string @go(SMBServerName,*string)

	// The Username of Active Directory Domain Administrator.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

// AccountSpec defines the desired state of Account
#AccountSpec: {
	forProvider: #AccountParameters @go(ForProvider)

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
	initProvider?: #AccountInitParameters @go(InitProvider)
}

// AccountStatus defines the observed state of Account.
#AccountStatus: {
	atProvider?: #AccountObservation @go(AtProvider)
}

// Account is the Schema for the Accounts API. Manages a NetApp Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Account: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #AccountSpec   @go(Spec)
	status?: #AccountStatus @go(Status)
}

// AccountList contains a list of Accounts
#AccountList: {
	items: [...#Account] @go(Items,[]Account)
}
