// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#AuthorizationObservation: {
	// The authentication Parameter value.
	parameter?: null | string @go(Parameter,*string)

	// The authentication Scheme name.
	scheme?: null | string @go(Scheme,*string)
}

#AuthorizationParameters: {
	// The authentication Parameter value.
	// +kubebuilder:validation:Optional
	parameter?: null | string @go(Parameter,*string)

	// The authentication Scheme name.
	// +kubebuilder:validation:Optional
	scheme?: null | string @go(Scheme,*string)
}

#BackendObservation: {
	// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// A credentials block as documented below.
	credentials?: [...#CredentialsObservation] @go(Credentials,[]CredentialsObservation)

	// The description of the backend.
	description?: null | string @go(Description,*string)

	// The ID of the API Management API.
	id?: null | string @go(ID,*string)

	// The protocol used by the backend host. Possible values are http or soap.
	protocol?: null | string @go(Protocol,*string)

	// A proxy block as documented below.
	proxy?: [...#BackendProxyObservation] @go(Proxy,[]BackendProxyObservation)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
	resourceId?: null | string @go(ResourceID,*string)

	// A service_fabric_cluster block as documented below.
	serviceFabricCluster?: [...#ServiceFabricClusterObservation] @go(ServiceFabricCluster,[]ServiceFabricClusterObservation)

	// A tls block as documented below.
	tls?: [...#TLSObservation] @go(TLS,[]TLSObservation)

	// The title of the backend.
	title?: null | string @go(Title,*string)

	// The URL of the backend host.
	url?: null | string @go(URL,*string)
}

#BackendParameters: {
	// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// A credentials block as documented below.
	// +kubebuilder:validation:Optional
	credentials?: [...#CredentialsParameters] @go(Credentials,[]CredentialsParameters)

	// The description of the backend.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The protocol used by the backend host. Possible values are http or soap.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// A proxy block as documented below.
	// +kubebuilder:validation:Optional
	proxy?: [...#BackendProxyParameters] @go(Proxy,[]BackendProxyParameters)

	// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
	// +kubebuilder:validation:Optional
	resourceId?: null | string @go(ResourceID,*string)

	// A service_fabric_cluster block as documented below.
	// +kubebuilder:validation:Optional
	serviceFabricCluster?: [...#ServiceFabricClusterParameters] @go(ServiceFabricCluster,[]ServiceFabricClusterParameters)

	// A tls block as documented below.
	// +kubebuilder:validation:Optional
	tls?: [...#TLSParameters] @go(TLS,[]TLSParameters)

	// The title of the backend.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)

	// The URL of the backend host.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#BackendProxyObservation: {
	// The URL of the proxy server.
	url?: null | string @go(URL,*string)

	// The username to connect to the proxy server.
	username?: null | string @go(Username,*string)
}

#BackendProxyParameters: {
	// The URL of the proxy server.
	// +kubebuilder:validation:Required
	url?: null | string @go(URL,*string)

	// The username to connect to the proxy server.
	// +kubebuilder:validation:Required
	username?: null | string @go(Username,*string)
}

#CredentialsObservation: {
	// An authorization block as defined below.
	authorization?: [...#AuthorizationObservation] @go(Authorization,[]AuthorizationObservation)

	// A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.
	certificate?: [...null | string] @go(Certificate,[]*string)

	// A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.
	header?: {[string]: null | string} @go(Header,map[string]*string)

	// A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.
	query?: {[string]: null | string} @go(Query,map[string]*string)
}

#CredentialsParameters: {
	// An authorization block as defined below.
	// +kubebuilder:validation:Optional
	authorization?: [...#AuthorizationParameters] @go(Authorization,[]AuthorizationParameters)

	// A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.
	// +kubebuilder:validation:Optional
	certificate?: [...null | string] @go(Certificate,[]*string)

	// A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.
	// +kubebuilder:validation:Optional
	header?: {[string]: null | string} @go(Header,map[string]*string)

	// A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.
	// +kubebuilder:validation:Optional
	query?: {[string]: null | string} @go(Query,map[string]*string)
}

#ServerX509NameObservation: {
	// The thumbprint for the issuer of the certificate.
	issuerCertificateThumbprint?: null | string @go(IssuerCertificateThumbprint,*string)

	// The common name of the certificate.
	name?: null | string @go(Name,*string)
}

#ServerX509NameParameters: {
	// The thumbprint for the issuer of the certificate.
	// +kubebuilder:validation:Required
	issuerCertificateThumbprint?: null | string @go(IssuerCertificateThumbprint,*string)

	// The common name of the certificate.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#ServiceFabricClusterObservation: {
	// The client certificate resource id for the management endpoint.
	clientCertificateId?: null | string @go(ClientCertificateID,*string)

	// The client certificate thumbprint for the management endpoint.
	clientCertificateThumbprint?: null | string @go(ClientCertificateThumbprint,*string)

	// A list of cluster management endpoints.
	managementEndpoints?: [...null | string] @go(ManagementEndpoints,[]*string)

	// The maximum number of retries when attempting resolve the partition.
	maxPartitionResolutionRetries?: null | float64 @go(MaxPartitionResolutionRetries,*float64)

	// A list of thumbprints of the server certificates of the Service Fabric cluster.
	serverCertificateThumbprints?: [...null | string] @go(ServerCertificateThumbprints,[]*string)

	// One or more server_x509_name blocks as documented below.
	serverX509Name?: [...#ServerX509NameObservation] @go(ServerX509Name,[]ServerX509NameObservation)
}

#ServiceFabricClusterParameters: {
	// The client certificate resource id for the management endpoint.
	// +kubebuilder:validation:Optional
	clientCertificateId?: null | string @go(ClientCertificateID,*string)

	// The client certificate thumbprint for the management endpoint.
	// +kubebuilder:validation:Optional
	clientCertificateThumbprint?: null | string @go(ClientCertificateThumbprint,*string)

	// A list of cluster management endpoints.
	// +kubebuilder:validation:Required
	managementEndpoints: [...null | string] @go(ManagementEndpoints,[]*string)

	// The maximum number of retries when attempting resolve the partition.
	// +kubebuilder:validation:Required
	maxPartitionResolutionRetries?: null | float64 @go(MaxPartitionResolutionRetries,*float64)

	// A list of thumbprints of the server certificates of the Service Fabric cluster.
	// +kubebuilder:validation:Optional
	serverCertificateThumbprints?: [...null | string] @go(ServerCertificateThumbprints,[]*string)

	// One or more server_x509_name blocks as documented below.
	// +kubebuilder:validation:Optional
	serverX509Name?: [...#ServerX509NameParameters] @go(ServerX509Name,[]ServerX509NameParameters)
}

#TLSObservation: {
	// Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.
	validateCertificateChain?: null | bool @go(ValidateCertificateChain,*bool)

	// Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.
	validateCertificateName?: null | bool @go(ValidateCertificateName,*bool)
}

#TLSParameters: {
	// Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.
	// +kubebuilder:validation:Optional
	validateCertificateChain?: null | bool @go(ValidateCertificateChain,*bool)

	// Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.
	// +kubebuilder:validation:Optional
	validateCertificateName?: null | bool @go(ValidateCertificateName,*bool)
}

// BackendSpec defines the desired state of Backend
#BackendSpec: {
	forProvider: #BackendParameters @go(ForProvider)
}

// BackendStatus defines the observed state of Backend.
#BackendStatus: {
	atProvider?: #BackendObservation @go(AtProvider)
}

// Backend is the Schema for the Backends API. Manages a backend within an API Management Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Backend: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.protocol)",message="protocol is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.url)",message="url is a required parameter"
	spec:    #BackendSpec   @go(Spec)
	status?: #BackendStatus @go(Status)
}

// BackendList contains a list of Backends
#BackendList: {
	items: [...#Backend] @go(Items,[]Backend)
}
