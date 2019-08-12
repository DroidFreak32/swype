.class public Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;
.super Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
.source "AndroidUserDictionarySyncDataProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "word"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
