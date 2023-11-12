// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/backup/v1beta1

package v1beta1

#GlobalSettingsObservation: {
	// A list of resources along with the opt-in preferences for the account.
	globalSettings?: {[string]: null | string} @go(GlobalSettings,map[string]*string)

	// The AWS Account ID.
	id?: null | string @go(ID,*string)
}

#GlobalSettingsParameters: {
	// A list of resources along with the opt-in preferences for the account.
	// +kubebuilder:validation:Optional
	globalSettings?: {[string]: null | string} @go(GlobalSettings,map[string]*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// GlobalSettingsSpec defines the desired state of GlobalSettings
#GlobalSettingsSpec: {
	forProvider: #GlobalSettingsParameters @go(ForProvider)
}

// GlobalSettingsStatus defines the observed state of GlobalSettings.
#GlobalSettingsStatus: {
	atProvider?: #GlobalSettingsObservation @go(AtProvider)
}

// GlobalSettings is the Schema for the GlobalSettingss API. Provides an AWS Backup Global Settings resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GlobalSettings: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.globalSettings)",message="globalSettings is a required parameter"
	spec:    #GlobalSettingsSpec   @go(Spec)
	status?: #GlobalSettingsStatus @go(Status)
}

// GlobalSettingsList contains a list of GlobalSettingss
#GlobalSettingsList: {
	items: [...#GlobalSettings] @go(Items,[]GlobalSettings)
}
