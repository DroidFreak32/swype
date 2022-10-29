.class Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
.super Ljava/lang/Object;
.source "SDKDictionaryDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKDictionaryDownloadFileCallback"
.end annotation


# instance fields
.field private dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/connect/SDKDownloadStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

.field private progress:I

.field final synthetic this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    .line 83
    new-instance v2, Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 84
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_53

    .line 89
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 96
    .local v1, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_voice_input_wait:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 97
    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v5, v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 103
    .end local v1    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_53
    return-void
.end method

.method private getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "null"

    goto :goto_a
.end method


# virtual methods
.method public addListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public downloadComplete(Ljava/io/File;)Z
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "[SDKDownloadFileCallback]"

    aput-object v5, v4, v7

    const-string/jumbo v5, "["

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "] "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "downloadComplete"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v4

    .line 225
    :try_start_31
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_4b

    .line 228
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 229
    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadComplete()V

    goto :goto_3b

    .line 226
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 233
    :cond_4e
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v1

    .line 235
    .local v1, "mgr":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    new-instance v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V

    .line 236
    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_ab

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v3, :cond_ab

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3, v7, v7, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 242
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v4, Lcom/nuance/swype/input/R$string;->accessibility_setting_installing:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 243
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v3, v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    :cond_ab
    return v8
.end method

.method public downloadFailed(I)V
    .registers 10
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "[SDKDownloadFileCallback]"

    aput-object v4, v3, v6

    const-string/jumbo v4, "["

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "] "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "downloadFailed:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v3

    .line 203
    :try_start_38
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 204
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_52

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 207
    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadFailed(I)V

    goto :goto_42

    .line 204
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2

    .line 211
    :cond_55
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 212
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_91

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v2, :cond_91

    .line 213
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2, v6, v6, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 214
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 215
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_setting_fail_installation:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 216
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v2, v2, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    :cond_91
    return-void
.end method

.method public downloadPercentage(I)V
    .registers 8
    .param p1, "percent"    # I

    .prologue
    const/4 v5, 0x0

    .line 175
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "[SDKDownloadFileCallback]"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "downloadPercent:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v2

    .line 178
    :try_start_38
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_52

    .line 181
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 182
    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadPercentage(I)V

    goto :goto_42

    .line 179
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1

    .line 185
    :cond_55
    iget v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->progress:I

    if-ne p1, v1, :cond_5a

    .line 196
    :cond_59
    :goto_59
    return-void

    .line 189
    :cond_5a
    iput p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->progress:I

    .line 192
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_59

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_59

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 194
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v1, v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_59
.end method

.method public downloadStarted()V
    .registers 7

    .prologue
    .line 155
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "[SDKDownloadFileCallback]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "["

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "] "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "downloadStarted"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v3

    .line 158
    :try_start_31
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_4b

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 162
    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStarted()V

    goto :goto_3b

    .line 159
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 166
    :cond_4e
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_80

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v2, :cond_80

    .line 168
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v3, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 169
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v2, v2, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    :cond_80
    return-void
.end method

.method public downloadStopped(I)V
    .registers 7
    .param p1, "reasonCode"    # I

    .prologue
    .line 136
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[SDKDownloadFileCallback]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "downloadStopped:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v2

    .line 139
    :try_start_38
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_52

    .line 142
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 143
    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStopped(I)V

    goto :goto_42

    .line 140
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1

    .line 147
    :cond_55
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_76

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v1, v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 151
    :cond_76
    return-void
.end method

.method public getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    return-object v0
.end method

.method installed()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v5

    .line 260
    :try_start_9
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_23

    .line 262
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 263
    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadInstalled()V

    goto :goto_13

    .line 261
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v4

    .line 267
    :cond_26
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_88

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v4, :cond_88

    .line 270
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/input/settings/ChinesePrefsDispatch;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 271
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 272
    .local v2, "resultIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v7, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 278
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v4, v7, v7, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    .line 279
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 280
    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 282
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 283
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v4, v4, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 285
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_88
    return-void
.end method

.method public removeListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .registers 6
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_28

    .line 113
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 125
    :cond_28
    :goto_28
    return-void

    .line 117
    :cond_29
    # getter for: Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadFileCallback]setLanguageId "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "unknown language"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_28

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_28
.end method
