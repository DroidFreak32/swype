.class public abstract Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
.super Ljava/lang/Object;
.source "SyncDataProvider.java"


# instance fields
.field protected final bucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->bucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 16
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public getNewWordsBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->bucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method
