.class Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SMSReader"
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = ""

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final OUTBOX:Ljava/lang/String; = "outbox"

.field public static final SENT:Ljava/lang/String; = "sent"

.field private static final SMS_COLUMN_ADDRESS:I = 0x2

.field private static final SMS_COLUMN_BODY:I = 0x5

.field public static final SMS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->SMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerSms$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;-><init>()V

    return-void
.end method

.method public static getAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBody(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9

    const/4 v6, 0x0

    const-string v0, ""

    const-string v5, "date DESC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms$SMSReader;->SMS_CONTENT_URI:Landroid/net/Uri;

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

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method
