.class public interface abstract Lcom/localytics/android/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# virtual methods
.method public abstract localyticsDidDismissInAppMessage()V
.end method

.method public abstract localyticsDidDisplayInAppMessage()V
.end method

.method public abstract localyticsShouldShowPlacesPushNotification(Lcom/localytics/android/PlacesCampaign;)Z
.end method

.method public abstract localyticsShouldShowPushNotification(Lcom/localytics/android/PushCampaign;)Z
.end method

.method public abstract localyticsWillDismissInAppMessage()V
.end method

.method public abstract localyticsWillDisplayInAppMessage()V
.end method

.method public abstract localyticsWillShowPlacesPushNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/localytics/android/PlacesCampaign;)Landroid/support/v4/app/NotificationCompat$Builder;
.end method

.method public abstract localyticsWillShowPushNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/localytics/android/PushCampaign;)Landroid/support/v4/app/NotificationCompat$Builder;
.end method
