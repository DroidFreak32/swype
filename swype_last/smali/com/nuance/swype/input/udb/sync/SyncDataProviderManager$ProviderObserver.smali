.class Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;
.super Landroid/database/ContentObserver;
.source "SyncDataProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProviderObserver"
.end annotation


# instance fields
.field enableAndroidDictionarySync:Z

.field provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

.field final synthetic this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Landroid/os/Handler;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V
    .registers 6
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 193
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 194
    iput-object p3, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .line 195
    # getter for: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$100(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->mutual_synchronize_android_dictionary:I

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->enableAndroidDictionarySync:Z

    .line 197
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->onChange(ZLandroid/net/Uri;)V

    .line 202
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->enableAndroidDictionarySync:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    instance-of v0, v0, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;

    if-eqz v0, :cond_3c

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    # getter for: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->timeOfLastUpdate:J
    invoke-static {}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$200()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 213
    # getter for: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$100(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 214
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    # invokes: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->syncAndroidDictionary(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V
    invoke-static {v0, v1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$300(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->timeOfLastUpdate:J
    invoke-static {v0, v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$202(J)J

    .line 225
    :cond_3b
    :goto_3b
    return-void

    .line 223
    :cond_3c
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    # invokes: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduleSync(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$400(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_3b
.end method
