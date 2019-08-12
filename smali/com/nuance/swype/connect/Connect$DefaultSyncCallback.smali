.class Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSyncCallback"
.end annotation


# instance fields
.field private NOTIFICATION_ID:I

.field private final context:Landroid/content/Context;

.field private notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 284
    const v0, 0x34f3731

    iput v0, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    .line 287
    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    .line 288
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/nuance/swype/connect/Connect;->access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 289
    return-void
.end method

.method private displayNotification(Landroid/content/Intent;II)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 292
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 298
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p1, :cond_1

    .line 300
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "i":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 302
    .restart local p1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PASS_ACTIVATION_CODE_KEY"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    if-eqz v1, :cond_2

    .line 306
    new-instance v3, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 307
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 312
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 317
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 319
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 322
    .end local v2    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_2
    return-void
.end method


# virtual methods
.method public created()V
    .locals 4

    .prologue
    .line 326
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    const-class v3, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 327
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "DISPLAY_ACTIVATION_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    sget v1, Lcom/nuance/swype/input/R$string;->pref_connect_activation_code:I

    sget v2, Lcom/nuance/swype/input/R$string;->notification_activation_code_description:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->displayNotification(Landroid/content/Intent;II)V

    .line 335
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->dismissAccountAlarm()V

    .line 336
    return-void
.end method

.method public devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 0
    .param p1, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 373
    return-void
.end method

.method public linked()V
    .locals 4

    .prologue
    .line 340
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "Default Sync to on"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 343
    .local v0, "s":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$900(Lcom/nuance/swype/connect/Connect;)V

    .line 350
    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$string;->notification_account_created_title:I

    sget v3, Lcom/nuance/swype/input/R$string;->notification_account_created_description:I

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->displayNotification(Landroid/content/Intent;II)V

    .line 353
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method

.method public status(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 368
    return-void
.end method

.method public verifyFailed()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
