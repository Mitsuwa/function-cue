// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/backup/v1beta1

package v1beta1

#VaultNotificationsObservation: {
	// The ARN of the vault.
	backupVaultArn?: null | string @go(BackupVaultArn,*string)

	// The name of the vault.
	id?: null | string @go(ID,*string)
}

#VaultNotificationsParameters: {
	// An array of events that indicate the status of jobs to back up resources to the backup vault.
	// +kubebuilder:validation:Required
	backupVaultEvents: [...null | string] @go(BackupVaultEvents,[]*string)

	// Name of the backup vault to add notifications for.
	// +crossplane:generate:reference:type=Vault
	// +kubebuilder:validation:Optional
	backupVaultName?: null | string @go(BackupVaultName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	snsTopicArn?: null | string @go(SnsTopicArn,*string)
}

// VaultNotificationsSpec defines the desired state of VaultNotifications
#VaultNotificationsSpec: {
	forProvider: #VaultNotificationsParameters @go(ForProvider)
}

// VaultNotificationsStatus defines the observed state of VaultNotifications.
#VaultNotificationsStatus: {
	atProvider?: #VaultNotificationsObservation @go(AtProvider)
}

// VaultNotifications is the Schema for the VaultNotificationss API. Provides an AWS Backup vault notifications resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VaultNotifications: {
	spec:    #VaultNotificationsSpec   @go(Spec)
	status?: #VaultNotificationsStatus @go(Status)
}

// VaultNotificationsList contains a list of VaultNotificationss
#VaultNotificationsList: {
	items: [...#VaultNotifications] @go(Items,[]VaultNotifications)
}
