// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/servicefabric/v1beta1

package v1beta1

#ActiveDirectoryObservation: {
	// The ID of the Client Application.
	clientApplicationId?: null | string @go(ClientApplicationID,*string)

	// The ID of the Cluster Application.
	clusterApplicationId?: null | string @go(ClusterApplicationID,*string)

	// The ID of the Tenant.
	tenantId?: null | string @go(TenantID,*string)
}

#ActiveDirectoryParameters: {
	// The ID of the Client Application.
	// +kubebuilder:validation:Required
	clientApplicationId?: null | string @go(ClientApplicationID,*string)

	// The ID of the Cluster Application.
	// +kubebuilder:validation:Required
	clusterApplicationId?: null | string @go(ClusterApplicationID,*string)

	// The ID of the Tenant.
	// +kubebuilder:validation:Required
	tenantId?: null | string @go(TenantID,*string)
}

#AuthenticationCertificateObservation: {
	// The certificate's CN.
	commonName?: null | string @go(CommonName,*string)

	// The thumbprint of the certificate.
	thumbprint?: null | string @go(Thumbprint,*string)

	// The type of the certificate. Can be AdminClient or ReadOnlyClient.
	type?: null | string @go(Type,*string)
}

#AuthenticationCertificateParameters: {
	// The certificate's CN.
	// +kubebuilder:validation:Optional
	commonName?: null | string @go(CommonName,*string)

	// The thumbprint of the certificate.
	// +kubebuilder:validation:Required
	thumbprint?: null | string @go(Thumbprint,*string)

	// The type of the certificate. Can be AdminClient or ReadOnlyClient.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#AuthenticationObservation: {
	// A active_directory block as defined above.
	activeDirectory?: [...#ActiveDirectoryObservation] @go(ActiveDirectory,[]ActiveDirectoryObservation)

	// One or more certificate blocks as defined below.
	certificate?: [...#AuthenticationCertificateObservation] @go(Certificate,[]AuthenticationCertificateObservation)
}

#AuthenticationParameters: {
	// A active_directory block as defined above.
	// +kubebuilder:validation:Optional
	activeDirectory?: [...#ActiveDirectoryParameters] @go(ActiveDirectory,[]ActiveDirectoryParameters)

	// One or more certificate blocks as defined below.
	// +kubebuilder:validation:Optional
	certificate?: [...#AuthenticationCertificateParameters] @go(Certificate,[]AuthenticationCertificateParameters)
}

#CertificatesObservation: {
	// The certificate store on the Virtual Machine to which the certificate should be added.
	store?: null | string @go(Store,*string)

	// The URL of a certificate that has been uploaded to Key Vault as a secret
	url?: null | string @go(URL,*string)
}

#CertificatesParameters: {
	// The certificate store on the Virtual Machine to which the certificate should be added.
	// +kubebuilder:validation:Required
	store?: null | string @go(Store,*string)

	// The URL of a certificate that has been uploaded to Key Vault as a secret
	// +kubebuilder:validation:Required
	url?: null | string @go(URL,*string)
}

#CustomFabricSettingObservation: {
	// Parameter name.
	parameter?: null | string @go(Parameter,*string)

	// Section name.
	section?: null | string @go(Section,*string)

	// Parameter value.
	value?: null | string @go(Value,*string)
}

#CustomFabricSettingParameters: {
	// Parameter name.
	// +kubebuilder:validation:Required
	parameter?: null | string @go(Parameter,*string)

	// Section name.
	// +kubebuilder:validation:Required
	section?: null | string @go(Section,*string)

	// Parameter value.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#LBRuleObservation: {
	// LB Backend port.
	backendPort?: null | float64 @go(BackendPort,*float64)

	// LB Frontend port.
	frontendPort?: null | float64 @go(FrontendPort,*float64)

	// Protocol for the probe. Can be one of tcp, udp, http, or https.
	probeProtocol?: null | string @go(ProbeProtocol,*string)

	// Path for the probe to check, when probe protocol is set to http.
	probeRequestPath?: null | string @go(ProbeRequestPath,*string)

	// The transport protocol used in this rule. Can be one of tcp or udp.
	protocol?: null | string @go(Protocol,*string)
}

#LBRuleParameters: {
	// LB Backend port.
	// +kubebuilder:validation:Required
	backendPort?: null | float64 @go(BackendPort,*float64)

	// LB Frontend port.
	// +kubebuilder:validation:Required
	frontendPort?: null | float64 @go(FrontendPort,*float64)

	// Protocol for the probe. Can be one of tcp, udp, http, or https.
	// +kubebuilder:validation:Required
	probeProtocol?: null | string @go(ProbeProtocol,*string)

	// Path for the probe to check, when probe protocol is set to http.
	// +kubebuilder:validation:Optional
	probeRequestPath?: null | string @go(ProbeRequestPath,*string)

	// The transport protocol used in this rule. Can be one of tcp or udp.
	// +kubebuilder:validation:Required
	protocol?: null | string @go(Protocol,*string)
}

#ManagedClusterNodeTypeObservation: {
	// Sets the port range available for applications. Format is <from_port>-<to_port>, for example 10000-20000.
	applicationPortRange?: null | string @go(ApplicationPortRange,*string)

	// Specifies a list of key/value pairs used to set capacity tags for this node type.
	capacities?: {[string]: null | string} @go(Capacities,map[string]*string)

	// The size of the data disk in gigabytes..
	dataDiskSizeGb?: null | float64 @go(DataDiskSizeGb,*float64)

	// The type of the disk to use for storing data. It can be one of Premium_LRS, Standard_LRS, or StandardSSD_LRS.
	dataDiskType?: null | string @go(DataDiskType,*string)

	// Sets the port range available for the OS. Format is <from_port>-<to_port>, for example 10000-20000. There has to be at least 255 ports available and cannot overlap with application_port_range..
	ephemeralPortRange?: null | string @go(EphemeralPortRange,*string)

	// The ID of the Resource Group.
	id?: null | string @go(ID,*string)

	// If set the node type can be composed of multiple placement groups.
	multiplePlacementGroupsEnabled?: null | bool @go(MultiplePlacementGroupsEnabled,*bool)

	// The name which should be used for this node type.
	name?: null | string @go(Name,*string)

	// Specifies a list of placement tags that can be used to indicate where services should run..
	placementProperties?: {[string]: null | string} @go(PlacementProperties,map[string]*string)

	// If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created.
	primary?: null | bool @go(Primary,*bool)

	// If set to true, only stateless workloads can run on this node type.
	stateless?: null | bool @go(Stateless,*bool)

	// The offer type of the marketplace image cluster VMs will use.
	vmImageOffer?: null | string @go(VMImageOffer,*string)

	// The publisher of the marketplace image cluster VMs will use.
	vmImagePublisher?: null | string @go(VMImagePublisher,*string)

	// The SKU of the marketplace image cluster VMs will use.
	vmImageSku?: null | string @go(VMImageSku,*string)

	// The version of the marketplace image cluster VMs will use.
	vmImageVersion?: null | string @go(VMImageVersion,*string)

	// The number of instances this node type will launch.
	vmInstanceCount?: null | float64 @go(VMInstanceCount,*float64)

	// One or more vm_secrets blocks as defined below.
	vmSecrets?: [...#VMSecretsObservation] @go(VMSecrets,[]VMSecretsObservation)

	// The size of the instances in this node type.
	vmSize?: null | string @go(VMSize,*string)
}

#ManagedClusterNodeTypeParameters: {
	// Sets the port range available for applications. Format is <from_port>-<to_port>, for example 10000-20000.
	// +kubebuilder:validation:Required
	applicationPortRange?: null | string @go(ApplicationPortRange,*string)

	// Specifies a list of key/value pairs used to set capacity tags for this node type.
	// +kubebuilder:validation:Optional
	capacities?: {[string]: null | string} @go(Capacities,map[string]*string)

	// The size of the data disk in gigabytes..
	// +kubebuilder:validation:Required
	dataDiskSizeGb?: null | float64 @go(DataDiskSizeGb,*float64)

	// The type of the disk to use for storing data. It can be one of Premium_LRS, Standard_LRS, or StandardSSD_LRS.
	// +kubebuilder:validation:Optional
	dataDiskType?: null | string @go(DataDiskType,*string)

	// Sets the port range available for the OS. Format is <from_port>-<to_port>, for example 10000-20000. There has to be at least 255 ports available and cannot overlap with application_port_range..
	// +kubebuilder:validation:Required
	ephemeralPortRange?: null | string @go(EphemeralPortRange,*string)

	// If set the node type can be composed of multiple placement groups.
	// +kubebuilder:validation:Optional
	multiplePlacementGroupsEnabled?: null | bool @go(MultiplePlacementGroupsEnabled,*bool)

	// The name which should be used for this node type.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Specifies a list of placement tags that can be used to indicate where services should run..
	// +kubebuilder:validation:Optional
	placementProperties?: {[string]: null | string} @go(PlacementProperties,map[string]*string)

	// If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created.
	// +kubebuilder:validation:Optional
	primary?: null | bool @go(Primary,*bool)

	// If set to true, only stateless workloads can run on this node type.
	// +kubebuilder:validation:Optional
	stateless?: null | bool @go(Stateless,*bool)

	// The offer type of the marketplace image cluster VMs will use.
	// +kubebuilder:validation:Required
	vmImageOffer?: null | string @go(VMImageOffer,*string)

	// The publisher of the marketplace image cluster VMs will use.
	// +kubebuilder:validation:Required
	vmImagePublisher?: null | string @go(VMImagePublisher,*string)

	// The SKU of the marketplace image cluster VMs will use.
	// +kubebuilder:validation:Required
	vmImageSku?: null | string @go(VMImageSku,*string)

	// The version of the marketplace image cluster VMs will use.
	// +kubebuilder:validation:Required
	vmImageVersion?: null | string @go(VMImageVersion,*string)

	// The number of instances this node type will launch.
	// +kubebuilder:validation:Required
	vmInstanceCount?: null | float64 @go(VMInstanceCount,*float64)

	// One or more vm_secrets blocks as defined below.
	// +kubebuilder:validation:Optional
	vmSecrets?: [...#VMSecretsParameters] @go(VMSecrets,[]VMSecretsParameters)

	// The size of the instances in this node type.
	// +kubebuilder:validation:Required
	vmSize?: null | string @go(VMSize,*string)
}

#ManagedClusterObservation: {
	// Controls how connections to the cluster are authenticated. A authentication block as defined below.
	authentication?: [...#AuthenticationObservation] @go(Authentication,[]AuthenticationObservation)

	// If true, backup service is enabled.
	backupServiceEnabled?: null | bool @go(BackupServiceEnabled,*bool)

	// Port to use when connecting to the cluster.
	clientConnectionPort?: null | float64 @go(ClientConnectionPort,*float64)

	// One or more custom_fabric_setting blocks as defined below.
	customFabricSetting?: [...#CustomFabricSettingObservation] @go(CustomFabricSetting,[]CustomFabricSettingObservation)

	// Hostname for the cluster. If unset the cluster's name will be used..
	dnsName?: null | string @go(DNSName,*string)

	// If true, DNS service is enabled.
	dnsServiceEnabled?: null | bool @go(DNSServiceEnabled,*bool)

	// Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
	httpGatewayPort?: null | float64 @go(HTTPGatewayPort,*float64)

	// The ID of the Resource Group.
	id?: null | string @go(ID,*string)

	// One or more lb_rule blocks as defined below.
	lbRule?: [...#LBRuleObservation] @go(LBRule,[]LBRuleObservation)

	// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
	location?: null | string @go(Location,*string)

	// One or more node_type blocks as defined below.
	nodeType?: [...#ManagedClusterNodeTypeObservation] @go(NodeType,[]ManagedClusterNodeTypeObservation)

	// The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// SKU for this cluster. Changing this forces a new resource to be created. Default is Basic, allowed values are either Basic or Standard.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags which should be assigned to the Resource Group.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Upgrade wave for the fabric runtime. Default is Wave0, allowed value must be one of Wave0, Wave1, or Wave2.
	upgradeWave?: null | string @go(UpgradeWave,*string)

	// Administrator password for the VMs that will be created as part of this cluster.
	username?: null | string @go(Username,*string)
}

#ManagedClusterParameters: {
	// Controls how connections to the cluster are authenticated. A authentication block as defined below.
	// +kubebuilder:validation:Optional
	authentication?: [...#AuthenticationParameters] @go(Authentication,[]AuthenticationParameters)

	// If true, backup service is enabled.
	// +kubebuilder:validation:Optional
	backupServiceEnabled?: null | bool @go(BackupServiceEnabled,*bool)

	// Port to use when connecting to the cluster.
	// +kubebuilder:validation:Optional
	clientConnectionPort?: null | float64 @go(ClientConnectionPort,*float64)

	// One or more custom_fabric_setting blocks as defined below.
	// +kubebuilder:validation:Optional
	customFabricSetting?: [...#CustomFabricSettingParameters] @go(CustomFabricSetting,[]CustomFabricSettingParameters)

	// Hostname for the cluster. If unset the cluster's name will be used..
	// +kubebuilder:validation:Optional
	dnsName?: null | string @go(DNSName,*string)

	// If true, DNS service is enabled.
	// +kubebuilder:validation:Optional
	dnsServiceEnabled?: null | bool @go(DNSServiceEnabled,*bool)

	// Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
	// +kubebuilder:validation:Optional
	httpGatewayPort?: null | float64 @go(HTTPGatewayPort,*float64)

	// One or more lb_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	lbRule?: [...#LBRuleParameters] @go(LBRule,[]LBRuleParameters)

	// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// One or more node_type blocks as defined below.
	// +kubebuilder:validation:Optional
	nodeType?: [...#ManagedClusterNodeTypeParameters] @go(NodeType,[]ManagedClusterNodeTypeParameters)

	// The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// SKU for this cluster. Changing this forces a new resource to be created. Default is Basic, allowed values are either Basic or Standard.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags which should be assigned to the Resource Group.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Upgrade wave for the fabric runtime. Default is Wave0, allowed value must be one of Wave0, Wave1, or Wave2.
	// +kubebuilder:validation:Optional
	upgradeWave?: null | string @go(UpgradeWave,*string)

	// Administrator password for the VMs that will be created as part of this cluster.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

#VMSecretsObservation: {
	// One or more certificates blocks as defined above.
	certificates?: [...#CertificatesObservation] @go(Certificates,[]CertificatesObservation)

	// The ID of the Vault that contain the certificates.
	vaultId?: null | string @go(VaultID,*string)
}

#VMSecretsParameters: {
	// One or more certificates blocks as defined above.
	// +kubebuilder:validation:Required
	certificates: [...#CertificatesParameters] @go(Certificates,[]CertificatesParameters)

	// The ID of the Vault that contain the certificates.
	// +kubebuilder:validation:Required
	vaultId?: null | string @go(VaultID,*string)
}

// ManagedClusterSpec defines the desired state of ManagedCluster
#ManagedClusterSpec: {
	forProvider: #ManagedClusterParameters @go(ForProvider)
}

// ManagedClusterStatus defines the observed state of ManagedCluster.
#ManagedClusterStatus: {
	atProvider?: #ManagedClusterObservation @go(AtProvider)
}

// ManagedCluster is the Schema for the ManagedClusters API. Manages a Resource Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagedCluster: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.clientConnectionPort)",message="clientConnectionPort is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.httpGatewayPort)",message="httpGatewayPort is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.lbRule)",message="lbRule is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #ManagedClusterSpec   @go(Spec)
	status?: #ManagedClusterStatus @go(Status)
}

// ManagedClusterList contains a list of ManagedClusters
#ManagedClusterList: {
	items: [...#ManagedCluster] @go(Items,[]ManagedCluster)
}
