.class public Lcom/nuance/sns/sms/SMSReader;
.super Ljava/lang/Object;
.source "SMSReader.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final OUTBOX:Ljava/lang/String; = "outbox"

.field public static final SENT:Ljava/lang/String; = "sent"

.field private static SMS_COLUMN_ADDRESS:I = 0x0

.field private static SMS_COLUMN_BODY:I = 0x0

.field private static SMS_COLUMN_DATE:I = 0x0

.field private static SMS_COLUMN_MESSAGE_ID:I = 0x0

.field private static SMS_COLUMN_PERSON:I = 0x0

.field private static SMS_COLUMN_THREAD_ID:I = 0x0

.field public static final SMS_CONTENT_URI:Landroid/net/Uri;

.field public static final SMS_ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/sms/SMSReader;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_MESSAGE_ID:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_THREAD_ID:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_ADDRESS:I

    .line 21
    const/4 v0, 0x3

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_PERSON:I

    .line 22
    const/4 v0, 0x4

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_DATE:I

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_BODY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_ADDRESS:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBody(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_BODY:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_PERSON:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 53
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_MESSAGE_ID:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSmsCount(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string v3, ""

    .line 75
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

    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nuance/sns/sms/SMSReader;->SMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 84
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    return v6

    .line 86
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_THREAD_ID:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimestamp(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    sget v0, Lcom/nuance/sns/sms/SMSReader;->SMS_COLUMN_DATE:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 26
    const-string v3, ""

    .line 27
    .local v3, "CONDITION":Ljava/lang/String;
    const-string v5, "date DESC"

    .line 29
    .local v5, "SORT_ORDER":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nuance/sns/sms/SMSReader;->SMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v4

    const/4 v4, 0x1

    const-string v7, "thread_id"

    aput-object v7, v2, v4

    const/4 v4, 0x2

    const-string v7, "address"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v7, "person"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "date"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "body"

    aput-object v7, v2, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 44
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 42
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    const/4 v6, 0x0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
