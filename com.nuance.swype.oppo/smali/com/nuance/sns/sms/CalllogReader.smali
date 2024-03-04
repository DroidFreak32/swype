.class public Lcom/nuance/sns/sms/CalllogReader;
.super Ljava/lang/Object;
.source "CalllogReader.java"


# static fields
.field private static final CALLLOGS_PROJECTION:[Ljava/lang/String;

.field private static final CALLLOGS_SELECTION:Ljava/lang/String; = "name IS NOT NULL"

.field private static CALLLOG_COLUMN_DATE:I = 0x0

.field private static CALLLOG_COLUMN_NAME:I = 0x0

.field public static final SMS_ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/sns/sms/CalllogReader;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    .line 20
    sput v2, Lcom/nuance/sns/sms/CalllogReader;->CALLLOG_COLUMN_NAME:I

    .line 21
    sput v3, Lcom/nuance/sns/sms/CalllogReader;->CALLLOG_COLUMN_DATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalllogCount(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v3, ""

    .line 50
    .local v3, "CONDITION":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    const/4 v6, 0x0

    .line 52
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 57
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    return v6

    .line 61
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getContactsName(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 40
    sget v0, Lcom/nuance/sns/sms/CalllogReader;->CALLLOG_COLUMN_NAME:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimestamp(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    sget v0, Lcom/nuance/sns/sms/CalllogReader;->CALLLOG_COLUMN_DATE:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public read(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timestamp"    # J

    .prologue
    .line 24
    const-string v5, "date DESC"

    .line 25
    .local v5, "SORT_ORDER":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name IS NOT NULL AND date>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/nuance/sns/sms/CalllogReader;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 35
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 33
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    const/4 v6, 0x0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
