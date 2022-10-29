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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .param p2, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 182
    sget-object v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "run(): sync"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getNewWordsBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->syncCursor(Landroid/database/Cursor;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->this$0:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    # getter for: Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->access$000(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;->provider:Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method
