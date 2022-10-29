.class public Lcom/nuance/android/compat/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/android/compat/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 193
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 196
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 197
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mPriority:I

    .line 199
    return-void
.end method

.method private setFlag(IZ)V
    .registers 6
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 495
    if-eqz p2, :cond_a

    .line 496
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 500
    :goto_9
    return-void

    .line 498
    :cond_a
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_9
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 6
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/nuance/android/compat/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    .prologue
    .line 569
    # getter for: Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/nuance/android/compat/NotificationCompat;->access$000()Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;->build(Lcom/nuance/android/compat/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 561
    # getter for: Lcom/nuance/android/compat/NotificationCompat;->IMPL:Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/nuance/android/compat/NotificationCompat;->access$000()Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;->build(Lcom/nuance/android/compat/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "autoCancel"    # Z

    .prologue
    .line 472
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 473
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 318
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 299
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 331
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 267
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 259
    return-object p0
.end method

.method public setDefaults(I)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "defaults"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 488
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_10

    .line 489
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 491
    :cond_10
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 343
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 360
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 361
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 362
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 390
    return-object p0
.end method

.method public setLights(III)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 9
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 432
    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 433
    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 434
    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_29

    move v0, v1

    .line 435
    .local v0, "showLights":Z
    :goto_1b
    iget-object v3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_2b

    :goto_25
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 437
    return-object p0

    .end local v0    # "showLights":Z
    :cond_29
    move v0, v2

    .line 434
    goto :goto_1b

    .restart local v0    # "showLights":Z
    :cond_2b
    move v1, v2

    .line 435
    goto :goto_25
.end method

.method public setNumber(I)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "number"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNumber:I

    .line 291
    return-object p0
.end method

.method public setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "ongoing"    # Z

    .prologue
    .line 452
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 453
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 461
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 462
    return-object p0
.end method

.method public setPriority(I)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "pri"    # I

    .prologue
    .line 514
    iput p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mPriority:I

    .line 515
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 307
    iput p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgressMax:I

    .line 308
    iput p2, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgress:I

    .line 309
    iput-boolean p3, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 310
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "icon"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 235
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 250
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 251
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 398
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 399
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 410
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 411
    return-object p0
.end method

.method public setStyle(Lcom/nuance/android/compat/NotificationCompat$Style;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "style"    # Lcom/nuance/android/compat/NotificationCompat$Style;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    if-eq v0, p1, :cond_f

    .line 548
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    .line 549
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    if-eqz v0, :cond_f

    .line 550
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/nuance/android/compat/NotificationCompat$Style;->setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V

    .line 553
    :cond_f
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 281
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 371
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 381
    iput-object p2, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 382
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mUseChronometer:Z

    .line 223
    return-object p0
.end method

.method public setVibrate([J)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 3
    .param p1, "pattern"    # [J

    .prologue
    .line 421
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 422
    return-object p0
.end method

.method public setWhen(J)Lcom/nuance/android/compat/NotificationCompat$Builder;
    .registers 4
    .param p1, "when"    # J

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 207
    return-object p0
.end method
