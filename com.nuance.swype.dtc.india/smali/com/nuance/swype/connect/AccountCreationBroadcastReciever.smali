.class public Lcom/nuance/swype/connect/AccountCreationBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "AccountCreationBroadcastReciever.java"


# static fields
.field public static final ACTION_NOTIFICATION:Ljava/lang/String; = "com.example.android.receivers.NOTIFICATION_ALARM"

.field protected static final NOTIFICATION_ID:I = 0x34f0c94

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "AccountCreationBroadcastReciever"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/AccountCreationBroadcastReciever;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "com.example.android.receivers.NOTIFICATION_ALARM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    const-string/jumbo v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 44
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "notificationBuilder":Lcom/nuance/android/compat/NotificationCompat$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 49
    sget v6, Lcom/nuance/swype/input/R$string;->back_and_sync_title:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->notification_account_create_title:I

    .line 50
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 51
    invoke-virtual {v6, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v6

    .line 52
    invoke-virtual {v6, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 53
    invoke-virtual {v6, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 55
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    .line 56
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    .line 57
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 59
    .local v4, "resultIntent":Landroid/content/Intent;
    const/high16 v6, 0x8000000

    invoke-static {p1, v8, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 65
    .local v5, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 67
    const v6, 0x34f0c94

    invoke-virtual {v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->dismissAccountAlarm()V

    .line 72
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "notificationBuilder":Lcom/nuance/android/compat/NotificationCompat$Builder;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resultIntent":Landroid/content/Intent;
    .end local v5    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method
