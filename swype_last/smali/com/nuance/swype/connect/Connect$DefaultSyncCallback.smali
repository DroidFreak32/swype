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
    accessFlags = 0x2
    name = "DefaultSyncCallback"
.end annotation


# instance fields
.field private NOTIFICATION_ID:I

.field private final context:Landroid/content/Context;

.field private notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 300
    const v0, 0x34f3731

    iput v0, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    .line 303
    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    .line 304
    const-string/jumbo v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    # setter for: Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {p1, v0}, Lcom/nuance/swype/connect/Connect;->access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 305
    return-void
.end method

.method private displayNotification(Landroid/content/Intent;II)V
    .registers 10
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 308
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v3, :cond_f

    .line 309
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 312
    :cond_f
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 314
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p1, :cond_24

    .line 316
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "i":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 318
    .restart local p1    # "i":Landroid/content/Intent;
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "PASS_ACTIVATION_CODE_KEY"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 321
    if-eqz v1, :cond_7e

    .line 322
    new-instance v3, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 323
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    .line 324
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 325
    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 326
    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 328
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 333
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 335
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->NOTIFICATION_ID:I

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 338
    .end local v2    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_7e
    return-void
.end method


# virtual methods
.method public created()V
    .registers 5

    .prologue
    .line 342
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    const-class v3, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "DISPLAY_ACTIVATION_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    sget v1, Lcom/nuance/swype/input/R$string;->pref_connect_activation_code:I

    sget v2, Lcom/nuance/swype/input/R$string;->notification_activation_code_description:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->displayNotification(Landroid/content/Intent;II)V

    .line 351
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->dismissAccountAlarm()V

    .line 352
    return-void
.end method

.method public devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .registers 2
    .param p1, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 389
    return-void
.end method

.method public linked()V
    .registers 6

    .prologue
    .line 356
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Default Sync to on"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 359
    .local v0, "s":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 360
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 364
    :cond_23
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->this$0:Lcom/nuance/swype/connect/Connect;

    # invokes: Lcom/nuance/swype/connect/Connect;->unregisterDefaultSyncCallback()V
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$900(Lcom/nuance/swype/connect/Connect;)V

    .line 366
    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$string;->notification_account_created_title:I

    sget v3, Lcom/nuance/swype/input/R$string;->notification_account_created_description:I

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;->displayNotification(Landroid/content/Intent;II)V

    .line 369
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 379
    return-void
.end method

.method public status(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    return-void
.end method

.method public verifyFailed()V
    .registers 1

    .prologue
    .line 374
    return-void
.end method
