// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#LoadBalancerNatPoolObservation: {
	// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
	backendPort?: null | float64 @go(BackendPort,*float64)

	// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
	floatingIpEnabled?: null | bool @go(FloatingIPEnabled,*bool)

	// The ID of the Load Balancer NAT pool.
	frontendIpConfigurationId?: null | string @go(FrontendIPConfigurationID,*string)

	// The name of the frontend IP configuration exposing this rule.
	frontendIpConfigurationName?: null | string @go(FrontendIPConfigurationName,*string)

	// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
	frontendPortEnd?: null | float64 @go(FrontendPortEnd,*float64)

	// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
	frontendPortStart?: null | float64 @go(FrontendPortStart,*float64)

	// The ID of the Load Balancer NAT pool.
	id?: null | string @go(ID,*string)

	// Specifies the idle timeout in minutes for TCP connections. Valid values are between 4 and 30. Defaults to 4.
	idleTimeoutInMinutes?: null | float64 @go(IdleTimeoutInMinutes,*float64)

	// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
	loadbalancerId?: null | string @go(LoadbalancerID,*string)

	// The transport protocol for the external endpoint. Possible values are All, Tcp and Udp.
	protocol?: null | string @go(Protocol,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Is TCP Reset enabled for this Load Balancer Rule?
	tcpResetEnabled?: null | bool @go(TCPResetEnabled,*bool)
}

#LoadBalancerNatPoolParameters: {
	// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
	// +kubebuilder:validation:Optional
	backendPort?: null | float64 @go(BackendPort,*float64)

	// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
	// +kubebuilder:validation:Optional
	floatingIpEnabled?: null | bool @go(FloatingIPEnabled,*bool)

	// The name of the frontend IP configuration exposing this rule.
	// +kubebuilder:validation:Optional
	frontendIpConfigurationName?: null | string @go(FrontendIPConfigurationName,*string)

	// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
	// +kubebuilder:validation:Optional
	frontendPortEnd?: null | float64 @go(FrontendPortEnd,*float64)

	// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
	// +kubebuilder:validation:Optional
	frontendPortStart?: null | float64 @go(FrontendPortStart,*float64)

	// Specifies the idle timeout in minutes for TCP connections. Valid values are between 4 and 30. Defaults to 4.
	// +kubebuilder:validation:Optional
	idleTimeoutInMinutes?: null | float64 @go(IdleTimeoutInMinutes,*float64)

	// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=LoadBalancer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	loadbalancerId?: null | string @go(LoadbalancerID,*string)

	// The transport protocol for the external endpoint. Possible values are All, Tcp and Udp.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Is TCP Reset enabled for this Load Balancer Rule?
	// +kubebuilder:validation:Optional
	tcpResetEnabled?: null | bool @go(TCPResetEnabled,*bool)
}

// LoadBalancerNatPoolSpec defines the desired state of LoadBalancerNatPool
#LoadBalancerNatPoolSpec: {
	forProvider: #LoadBalancerNatPoolParameters @go(ForProvider)
}

// LoadBalancerNatPoolStatus defines the observed state of LoadBalancerNatPool.
#LoadBalancerNatPoolStatus: {
	atProvider?: #LoadBalancerNatPoolObservation @go(AtProvider)
}

// LoadBalancerNatPool is the Schema for the LoadBalancerNatPools API. Manages a Load Balancer NAT Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LoadBalancerNatPool: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.backendPort)",message="backendPort is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.frontendIpConfigurationName)",message="frontendIpConfigurationName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.frontendPortEnd)",message="frontendPortEnd is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.frontendPortStart)",message="frontendPortStart is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.protocol)",message="protocol is a required parameter"
	spec:    #LoadBalancerNatPoolSpec   @go(Spec)
	status?: #LoadBalancerNatPoolStatus @go(Status)
}

// LoadBalancerNatPoolList contains a list of LoadBalancerNatPools
#LoadBalancerNatPoolList: {
	items: [...#LoadBalancerNatPool] @go(Items,[]LoadBalancerNatPool)
}
