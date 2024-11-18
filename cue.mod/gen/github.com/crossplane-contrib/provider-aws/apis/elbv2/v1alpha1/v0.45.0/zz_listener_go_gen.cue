// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/elbv2/v1alpha1

package v1alpha1

// ListenerParameters defines the desired state of Listener
#ListenerParameters: {
	// Region is which region the Listener will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// [TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN)
	// policy. You can specify one policy name. The following are the possible values:
	//
	//    * HTTP1Only
	//
	//    * HTTP2Only
	//
	//    * HTTP2Optional
	//
	//    * HTTP2Preferred
	//
	//    * None
	//
	// For more information, see ALPN policies (https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies)
	// in the Network Load Balancers Guide.
	alpnPolicy?: [...null | string] @go(AlpnPolicy,[]*string)

	// The port on which the load balancer is listening. You cannot specify a port
	// for a Gateway Load Balancer.
	port?: null | int64 @go(Port,*int64)

	// The protocol for connections from clients to the load balancer. For Application
	// Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load
	// Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t
	// specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot
	// specify a protocol for a Gateway Load Balancer.
	protocol?: null | string @go(Protocol,*string)

	// [HTTPS and TLS listeners] The security policy that defines which protocols
	// and ciphers are supported.
	//
	// For more information, see Security policies (https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
	// in the Application Load Balancers Guide and Security policies (https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies)
	// in the Network Load Balancers Guide.
	sslPolicy?: null | string @go(SSLPolicy,*string)

	// The tags to assign to the listener.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomListenerParameters
}

// ListenerSpec defines the desired state of Listener
#ListenerSpec: {
	forProvider: #ListenerParameters @go(ForProvider)
}

// ListenerObservation defines the observed state of Listener
#ListenerObservation: {
	// [HTTPS or TLS listener] The default certificate for the listener.
	certificates?: [...null | #Certificate] @go(Certificates,[]*Certificate)

	// The default actions for the listener.
	defaultActions?: [...null | #Action] @go(DefaultActions,[]*Action)

	// The Amazon Resource Name (ARN) of the listener.
	listenerARN?: null | string @go(ListenerARN,*string)

	// The Amazon Resource Name (ARN) of the load balancer.
	loadBalancerARN?: null | string @go(LoadBalancerARN,*string)
}

// ListenerStatus defines the observed state of Listener.
#ListenerStatus: {
	atProvider?: #ListenerObservation @go(AtProvider)
}

// Listener is the Schema for the Listeners API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Listener: {
	spec:    #ListenerSpec   @go(Spec)
	status?: #ListenerStatus @go(Status)
}

// ListenerList contains a list of Listeners
#ListenerList: {
	items: [...#Listener] @go(Items,[]Listener)
}
