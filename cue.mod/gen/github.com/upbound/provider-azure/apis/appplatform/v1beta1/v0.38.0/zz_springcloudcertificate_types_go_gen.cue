// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#SpringCloudCertificateInitParameters: {
	// The content of uploaded certificate. Changing this forces a new resource to be created.
	certificateContent?: null | string @go(CertificateContent,*string)
}

#SpringCloudCertificateObservation: {
	// The content of uploaded certificate. Changing this forces a new resource to be created.
	certificateContent?: null | string @go(CertificateContent,*string)

	// The ID of the Spring Cloud Certificate.
	id?: null | string @go(ID,*string)

	// Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
	keyVaultCertificateId?: null | string @go(KeyVaultCertificateID,*string)

	// Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
	serviceName?: null | string @go(ServiceName,*string)

	// The thumbprint of the Spring Cloud certificate.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#SpringCloudCertificateParameters: {
	// The content of uploaded certificate. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	certificateContent?: null | string @go(CertificateContent,*string)

	// Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/keyvault/v1beta1.Certificate
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	keyVaultCertificateId?: null | string @go(KeyVaultCertificateID,*string)

	// Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudService
	// +kubebuilder:validation:Optional
	serviceName?: null | string @go(ServiceName,*string)
}

// SpringCloudCertificateSpec defines the desired state of SpringCloudCertificate
#SpringCloudCertificateSpec: {
	forProvider: #SpringCloudCertificateParameters @go(ForProvider)

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
	initProvider?: #SpringCloudCertificateInitParameters @go(InitProvider)
}

// SpringCloudCertificateStatus defines the observed state of SpringCloudCertificate.
#SpringCloudCertificateStatus: {
	atProvider?: #SpringCloudCertificateObservation @go(AtProvider)
}

// SpringCloudCertificate is the Schema for the SpringCloudCertificates API. Manages an Azure Spring Cloud Certificate.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudCertificate: {
	spec:    #SpringCloudCertificateSpec   @go(Spec)
	status?: #SpringCloudCertificateStatus @go(Status)
}

// SpringCloudCertificateList contains a list of SpringCloudCertificates
#SpringCloudCertificateList: {
	items: [...#SpringCloudCertificate] @go(Items,[]SpringCloudCertificate)
}
