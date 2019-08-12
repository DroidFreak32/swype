.class public Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;
.super Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
.source "ContactsSyncDataProvider.java"


# static fields
.field private static final CALLLOGS_PROJECTION:[Ljava/lang/String;

.field private static final CALLLOGS_SELECTION:Ljava/lang/String; = "name IS NOT NULL"

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final CONTACTS_SELECTION:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/name\'"


# instance fields
.field private scrapeAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p3, "allContacts"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 32
    iput-boolean p3, p0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->scrapeAll:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->scrapeAll:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->scrapeAll:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/name\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    const-string v3, "name IS NOT NULL"

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
