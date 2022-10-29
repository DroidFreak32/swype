.class final Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplHoneycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final build$ab8b522(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 16
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 619
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    iget v7, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v8, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget-object v10, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 1030
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v12, v2, Landroid/app/Notification;->when:J

    .line 1031
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v11, v2, Landroid/app/Notification;->icon:I

    iget v12, v2, Landroid/app/Notification;->iconLevel:I

    .line 1032
    invoke-virtual {v1, v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v11, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1033
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v11, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1034
    invoke-virtual {v1, v11, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v11, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1035
    invoke-virtual {v1, v6, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->vibrate:[J

    .line 1036
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->ledARGB:I

    iget v11, v2, Landroid/app/Notification;->ledOnMS:I

    iget v12, v2, Landroid/app/Notification;->ledOffMS:I

    .line 1037
    invoke-virtual {v1, v6, v11, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a8

    const/4 v1, 0x1

    .line 1038
    :goto_52
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_aa

    const/4 v1, 0x1

    .line 1039
    :goto_5d
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_ac

    const/4 v1, 0x1

    .line 1040
    :goto_68
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->defaults:I

    .line 1041
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1043
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1044
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1045
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1046
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v1, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_ae

    const/4 v1, 0x1

    .line 1047
    :goto_8f
    invoke-virtual {v3, v9, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1049
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1052
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 622
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a7

    .line 623
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 625
    :cond_a7
    return-object v0

    .line 1037
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_a8
    const/4 v1, 0x0

    goto :goto_52

    .line 1038
    :cond_aa
    const/4 v1, 0x0

    goto :goto_5d

    .line 1039
    :cond_ac
    const/4 v1, 0x0

    goto :goto_68

    .line 1046
    :cond_ae
    const/4 v1, 0x0

    goto :goto_8f
.end method
