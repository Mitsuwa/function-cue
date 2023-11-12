// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/devices/v1beta1

package v1beta1

#IOTHubDPSSharedAccessPolicyInitParameters: {
	// Adds EnrollmentRead permission to this Shared Access Account. It allows read access to enrollment data.
	enrollmentRead?: null | bool @go(EnrollmentRead,*bool)

	// Adds EnrollmentWrite permission to this Shared Access Account. It allows write access to enrollment data.
	enrollmentWrite?: null | bool @go(EnrollmentWrite,*bool)

	// Adds RegistrationStatusRead permission to this Shared Access Account. It allows read access to device registrations.
	registrationRead?: null | bool @go(RegistrationRead,*bool)

	// Adds RegistrationStatusWrite permission to this Shared Access Account. It allows write access to device registrations.
	registrationWrite?: null | bool @go(RegistrationWrite,*bool)

	// Adds ServiceConfig permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
	serviceConfig?: null | bool @go(ServiceConfig,*bool)
}

#IOTHubDPSSharedAccessPolicyObservation: {
	// Adds EnrollmentRead permission to this Shared Access Account. It allows read access to enrollment data.
	enrollmentRead?: null | bool @go(EnrollmentRead,*bool)

	// Adds EnrollmentWrite permission to this Shared Access Account. It allows write access to enrollment data.
	enrollmentWrite?: null | bool @go(EnrollmentWrite,*bool)

	// The ID of the IoTHub Device Provisioning Service Shared Access Policy.
	id?: null | string @go(ID,*string)

	// The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
	iothubDpsName?: null | string @go(IOTHubDPSName,*string)

	// Adds RegistrationStatusRead permission to this Shared Access Account. It allows read access to device registrations.
	registrationRead?: null | bool @go(RegistrationRead,*bool)

	// Adds RegistrationStatusWrite permission to this Shared Access Account. It allows write access to device registrations.
	registrationWrite?: null | bool @go(RegistrationWrite,*bool)

	// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Adds ServiceConfig permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
	serviceConfig?: null | bool @go(ServiceConfig,*bool)
}

#IOTHubDPSSharedAccessPolicyParameters: {
	// Adds EnrollmentRead permission to this Shared Access Account. It allows read access to enrollment data.
	// +kubebuilder:validation:Optional
	enrollmentRead?: null | bool @go(EnrollmentRead,*bool)

	// Adds EnrollmentWrite permission to this Shared Access Account. It allows write access to enrollment data.
	// +kubebuilder:validation:Optional
	enrollmentWrite?: null | bool @go(EnrollmentWrite,*bool)

	// The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/devices/v1beta1.IOTHubDPS
	// +kubebuilder:validation:Optional
	iothubDpsName?: null | string @go(IOTHubDPSName,*string)

	// Adds RegistrationStatusRead permission to this Shared Access Account. It allows read access to device registrations.
	// +kubebuilder:validation:Optional
	registrationRead?: null | bool @go(RegistrationRead,*bool)

	// Adds RegistrationStatusWrite permission to this Shared Access Account. It allows write access to device registrations.
	// +kubebuilder:validation:Optional
	registrationWrite?: null | bool @go(RegistrationWrite,*bool)

	// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Adds ServiceConfig permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
	// +kubebuilder:validation:Optional
	serviceConfig?: null | bool @go(ServiceConfig,*bool)
}

// IOTHubDPSSharedAccessPolicySpec defines the desired state of IOTHubDPSSharedAccessPolicy
#IOTHubDPSSharedAccessPolicySpec: {
	forProvider: #IOTHubDPSSharedAccessPolicyParameters @go(ForProvider)

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
	initProvider?: #IOTHubDPSSharedAccessPolicyInitParameters @go(InitProvider)
}

// IOTHubDPSSharedAccessPolicyStatus defines the observed state of IOTHubDPSSharedAccessPolicy.
#IOTHubDPSSharedAccessPolicyStatus: {
	atProvider?: #IOTHubDPSSharedAccessPolicyObservation @go(AtProvider)
}

// IOTHubDPSSharedAccessPolicy is the Schema for the IOTHubDPSSharedAccessPolicys API. Manages an IotHub Device Provisioning Service Shared Access Policy
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IOTHubDPSSharedAccessPolicy: {
	spec:    #IOTHubDPSSharedAccessPolicySpec   @go(Spec)
	status?: #IOTHubDPSSharedAccessPolicyStatus @go(Status)
}

// IOTHubDPSSharedAccessPolicyList contains a list of IOTHubDPSSharedAccessPolicys
#IOTHubDPSSharedAccessPolicyList: {
	items: [...#IOTHubDPSSharedAccessPolicy] @go(Items,[]IOTHubDPSSharedAccessPolicy)
}
