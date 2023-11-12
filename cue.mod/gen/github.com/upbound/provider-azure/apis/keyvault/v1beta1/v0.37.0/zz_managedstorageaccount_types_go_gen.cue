// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/keyvault/v1beta1

package v1beta1

#ManagedStorageAccountInitParameters: {
	// Should Storage Account access key be regenerated periodically?
	regenerateKeyAutomatically?: null | bool @go(RegenerateKeyAutomatically,*bool)

	// How often Storage Account access key should be regenerated. Value needs to be in ISO 8601 duration format.
	regenerationPeriod?: null | string @go(RegenerationPeriod,*string)

	// Which Storage Account access key that is managed by Key Vault. Possible values are key1 and key2.
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ManagedStorageAccountObservation: {
	// The ID of the Key Vault Managed Storage Account.
	id?: null | string @go(ID,*string)

	// The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created.
	keyVaultId?: null | string @go(KeyVaultID,*string)

	// Should Storage Account access key be regenerated periodically?
	regenerateKeyAutomatically?: null | bool @go(RegenerateKeyAutomatically,*bool)

	// How often Storage Account access key should be regenerated. Value needs to be in ISO 8601 duration format.
	regenerationPeriod?: null | string @go(RegenerationPeriod,*string)

	// The ID of the Storage Account.
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// Which Storage Account access key that is managed by Key Vault. Possible values are key1 and key2.
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ManagedStorageAccountParameters: {
	// The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Vault
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	keyVaultId?: null | string @go(KeyVaultID,*string)

	// Should Storage Account access key be regenerated periodically?
	// +kubebuilder:validation:Optional
	regenerateKeyAutomatically?: null | bool @go(RegenerateKeyAutomatically,*bool)

	// How often Storage Account access key should be regenerated. Value needs to be in ISO 8601 duration format.
	// +kubebuilder:validation:Optional
	regenerationPeriod?: null | string @go(RegenerationPeriod,*string)

	// The ID of the Storage Account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// Which Storage Account access key that is managed by Key Vault. Possible values are key1 and key2.
	// +kubebuilder:validation:Optional
	storageAccountKey?: null | string @go(StorageAccountKey,*string)

	// A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ManagedStorageAccountSpec defines the desired state of ManagedStorageAccount
#ManagedStorageAccountSpec: {
	forProvider: #ManagedStorageAccountParameters @go(ForProvider)

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
	initProvider?: #ManagedStorageAccountInitParameters @go(InitProvider)
}

// ManagedStorageAccountStatus defines the observed state of ManagedStorageAccount.
#ManagedStorageAccountStatus: {
	atProvider?: #ManagedStorageAccountObservation @go(AtProvider)
}

// ManagedStorageAccount is the Schema for the ManagedStorageAccounts API. Manages a Key Vault Managed Storage Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagedStorageAccount: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.storageAccountKey) || (has(self.initProvider) && has(self.initProvider.storageAccountKey))",message="spec.forProvider.storageAccountKey is a required parameter"
	spec:    #ManagedStorageAccountSpec   @go(Spec)
	status?: #ManagedStorageAccountStatus @go(Status)
}

// ManagedStorageAccountList contains a list of ManagedStorageAccounts
#ManagedStorageAccountList: {
	items: [...#ManagedStorageAccount] @go(Items,[]ManagedStorageAccount)
}
