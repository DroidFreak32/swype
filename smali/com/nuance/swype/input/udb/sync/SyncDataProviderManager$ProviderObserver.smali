.class Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;
.super Landroid/database/ContentObserver;
.source "SyncDataProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProviderObserver"
.end annotation


# instance fields
.field enableAndroidDictionarySync:Z

.field provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

.field final synthetic this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Landroid/os/Handler;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 208
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 209
    iput-object p3, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .line 210
    invoke-static {p1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$100(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->mutual_synchronize_android_dictionary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->enableAndroidDictionarySync:Z

    .line 212
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->onChange(ZLandroid/net/Uri;)V

    .line 217
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-boolean v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->enableAndroidDictionarySync:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    instance-of v1, v1, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;

    if-eqz v1, :cond_1

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$202(J)J

    .line 226
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-static {v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$100(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 227
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$200()J

    move-result-wide v2

    invoke-static {}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$300()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$400()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-static {v1, v2, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$500(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$302(J)J

    .line 241
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$600(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method
