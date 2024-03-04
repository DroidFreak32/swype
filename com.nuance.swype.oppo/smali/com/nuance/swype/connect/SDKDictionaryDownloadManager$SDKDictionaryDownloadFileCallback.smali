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
    accessFlags = 0x0
    name = "SDKDictionaryDownloadFileCallback"
.end annotation


# instance fields
.field private dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

.field private listeners:Ljava/util/Set;
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

.field final synthetic this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    .line 81
    new-instance v2, Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 82
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 94
    .local v1, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_voice_input_wait:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v2, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 101
    .end local v1    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public downloadComplete(Ljava/io/File;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadComplete"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v6, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 221
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadComplete()V

    goto :goto_0

    .line 218
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 225
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v8

    .line 227
    .local v8, "mgr":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    new-instance v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V

    .line 228
    new-array v1, v11, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 232
    .local v9, "res":Landroid/content/res/Resources;
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v0, v10, v10, v11}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 234
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v1, Lcom/nuance/swype/input/R$string;->accessibility_setting_installing:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 235
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 238
    :cond_1
    return v11
.end method

.method public downloadFailed(I)V
    .locals 11
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v10, 0x0

    .line 192
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadFailed:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v7, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 199
    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadFailed(I)V

    goto :goto_0

    .line 196
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 203
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 204
    .local v9, "res":Landroid/content/res/Resources;
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v0, v10, v10, v10}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v1, Lcom/nuance/swype/input/R$string;->accessibility_setting_fail_installation:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 208
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 210
    :cond_1
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 9
    .param p1, "percent"    # I

    .prologue
    .line 173
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadPercent:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 175
    .local v7, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 180
    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadPercentage(I)V

    goto :goto_0

    .line 177
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 184
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 188
    :cond_1
    return-void
.end method

.method public downloadStarted()V
    .locals 9

    .prologue
    .line 153
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadStarted"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 155
    .local v6, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 160
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStarted()V

    goto :goto_0

    .line 157
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 164
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 165
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v1, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 169
    :cond_1
    return-void
.end method

.method public downloadStopped(I)V
    .locals 9
    .param p1, "reasonCode"    # I

    .prologue
    .line 134
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadStopped:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v7, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 141
    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStopped(I)V

    goto :goto_0

    .line 138
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 145
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 149
    :cond_1
    return-void
.end method

.method public getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    return-object v0
.end method

.method installed()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v0, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/connect/SDKDownloadStatusCallback;>;"
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    monitor-enter v6

    .line 252
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .line 255
    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadInstalled()V

    goto :goto_0

    .line 253
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 259
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 260
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v5, :cond_1

    .line 262
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-static {v6}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 264
    .local v3, "resultIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-static {v5}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, v8, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 270
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v5, v8, v8, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 275
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v5, v5, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public setDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 3
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 111
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]setLanguageId "

    const-string v2, "unknown language"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->this$0:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
