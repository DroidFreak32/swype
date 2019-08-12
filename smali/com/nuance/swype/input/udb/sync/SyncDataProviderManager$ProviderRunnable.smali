.class public Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;
.super Ljava/lang/Object;
.source "SyncDataProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProviderRunnable"
.end annotation


# instance fields
.field provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

.field final synthetic this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V
    .locals 0
    .param p2, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run(): sync"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getNewWordsBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->syncCursor(Landroid/database/Cursor;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-static {v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$000(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method
