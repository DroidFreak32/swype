.class Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerCalllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallLogReader"
.end annotation


# static fields
.field private static final CALLLOGS_PROJECTION:[Ljava/lang/String;

.field private static final CALLLOGS_SELECTION:Ljava/lang/String; = "name IS NOT NULL"

.field private static final CALLLOG_COLUMN_NAME:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;->CALLLOGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerCalllog$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;-><init>()V

    return-void
.end method

.method public static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 8

    const/4 v6, 0x0

    const-string v5, "date DESC"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name IS NOT NULL AND date>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerCalllog$CallLogReader;->CALLLOGS_PROJECTION:[Ljava/lang/String;

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
