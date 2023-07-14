.class Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/nuance/android/compat/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 20
    .param p1, "b"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 101
    new-instance v1, Lcom/nuance/android/compat/NotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mPriority:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/nuance/android/compat/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 106
    .local v1, "jbBuilder":Lcom/nuance/android/compat/NotificationCompatJellybean;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nuance/android/compat/NotificationCompat$Action;

    .line 107
    .local v18, "action":Lcom/nuance/android/compat/NotificationCompat$Action;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/nuance/android/compat/NotificationCompat$Action;->icon:I

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/nuance/android/compat/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/nuance/android/compat/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/android/compat/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 109
    .end local v18    # "action":Lcom/nuance/android/compat/NotificationCompat$Action;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    if-eqz v2, :cond_1

    .line 110
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    instance-of v2, v2, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;

    if-eqz v2, :cond_2

    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;

    .line 112
    .local v19, "style":Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/android/compat/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 132
    .end local v19    # "style":Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 116
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    instance-of v2, v2, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;

    if-eqz v2, :cond_3

    .line 117
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;

    .line 118
    .local v19, "style":Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/android/compat/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 122
    .end local v19    # "style":Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    instance-of v2, v2, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;

    if-eqz v2, :cond_1

    .line 123
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/android/compat/NotificationCompat$Builder;->mStyle:Lcom/nuance/android/compat/NotificationCompat$Style;

    move-object/from16 v19, v0

    check-cast v19, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;

    .line 124
    .local v19, "style":Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    iget-boolean v7, v0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/android/compat/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
