// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/networkmanager/v1beta1

package v1beta1

#AwsLocationObservation: {
}

#AwsLocationParameters: {
	// The Amazon Resource Name (ARN) of the subnet that the device is located in.
	// +kubebuilder:validation:Optional
	subnetArn?: null | string @go(SubnetArn,*string)

	// The Zone that the device is located in. Specify the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

#DeviceObservation: {
	// The Amazon Resource Name (ARN) of the device.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#DeviceParameters: {
	// The AWS location of the device. Documented below.
	// +kubebuilder:validation:Optional
	awsLocation?: [...#AwsLocationParameters] @go(AwsLocation,[]AwsLocationParameters)

	// A description of the device.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the global network.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.GlobalNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	globalNetworkId?: null | string @go(GlobalNetworkID,*string)

	// The location of the device. Documented below.
	// +kubebuilder:validation:Optional
	location?: [...#LocationParameters] @go(Location,[]LocationParameters)

	// The model of device.
	// +kubebuilder:validation:Optional
	model?: null | string @go(Model,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The serial number of the device.
	// +kubebuilder:validation:Optional
	serialNumber?: null | string @go(SerialNumber,*string)

	// The ID of the site.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.Site
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	siteId?: null | string @go(SiteID,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of device.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// The vendor of the device.
	// +kubebuilder:validation:Optional
	vendor?: null | string @go(Vendor,*string)
}

#LocationObservation: {
}

#LocationParameters: {
	// The physical address.
	// +kubebuilder:validation:Optional
	address?: null | string @go(Address,*string)

	// The latitude.
	// +kubebuilder:validation:Optional
	latitude?: null | string @go(Latitude,*string)

	// The longitude.
	// +kubebuilder:validation:Optional
	longitude?: null | string @go(Longitude,*string)
}

// DeviceSpec defines the desired state of Device
#DeviceSpec: {
	forProvider: #DeviceParameters @go(ForProvider)
}

// DeviceStatus defines the observed state of Device.
#DeviceStatus: {
	atProvider?: #DeviceObservation @go(AtProvider)
}

// Device is the Schema for the Devices API. Creates a device in a global network.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Device: {
	spec:    #DeviceSpec   @go(Spec)
	status?: #DeviceStatus @go(Status)
}

// DeviceList contains a list of Devices
#DeviceList: {
	items: [...#Device] @go(Items,[]Device)
}
