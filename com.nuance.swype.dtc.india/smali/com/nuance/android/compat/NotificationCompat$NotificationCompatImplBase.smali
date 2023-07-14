.class Lcom/nuance/android/compat/NotificationCompat$NotificationCompatImplBase;
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
    name = "NotificationCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/nuance/android/compat/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 6
    .param p1, "b"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 86
    iget-object v0, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 87
    .local v0, "result":Landroid/app/Notification;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    iget-wide v4, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 92
    .local v1, "ret":Landroid/app/Notification;
    iget v2, p1, Lcom/nuance/android/compat/NotificationCompat$Builder;->mPriority:I

    if-lez v2, :cond_0

    .line 93
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 95
    :cond_0
    return-object v1
.end method
