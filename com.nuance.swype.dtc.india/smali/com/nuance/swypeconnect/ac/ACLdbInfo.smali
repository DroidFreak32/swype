.class Lcom/nuance/swypeconnect/ac/ACLdbInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;
    }
.end annotation


# static fields
.field private static final ALPHA_CORE:I = 0x2

.field private static final CHINESE_CORE:I = 0xa

.field private static final ET9CONTENTSDEVIATION_ISMINIALM:I = 0x9

.field private static final ET9LDBOFFSET_BODY:I = 0x41

.field private static final ET9LDBOFFSET_CHUNK_COUNT_BYTE:I = 0x23

.field private static final ET9LDBOFFSET_CONTENTSDEVIATION:I = 0x37

.field private static final ET9LDBOFFSET_CONTENTSMAJORVER:I = 0x35

.field private static final ET9LDBOFFSET_DATABASETYPE:I = 0x21

.field private static final ET9LDBOFFSET_LDBLAYOUTVER:I = 0x20

.field private static final ET9LDBOFFSET_PRIMARYLANGID:I = 0x39

.field private static final ET9LDBOFFSET_SECONDARYLANGID:I = 0x3a

.field private static final ET9NGRAM_CHUNK_ID:I = 0x5

.field private static final ET9_CP_CONTENT_VER_OFFSET:I = 0x2a

.field private static final ET9_CP_LANGUAGE_ID_OFFSET:I = 0x28

.field private static final HEADER_SIZE:I = 0x42

.field private static final SKIP_BUFFER_SIZE:I = 0x400

.field private static final STREAM_BUFFER_SIZE:I = 0x40000

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private langId:I

.field private type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACLdbInfo version="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " ACLdbType="

    const-string/jumbo v5, " langId=0x"

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return-void
.end method

.method private static getChunkCount([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    aget-byte v1, p0, v0

    if-ltz v1, :cond_1

    const/16 v0, 0x23

    aget-byte v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    const/4 v3, 0x2

    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p0, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-array v0, v3, [B

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isCompressed([B)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACLdbInfo.gzWrapInputStream IOException trying to wrap stream."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isCompressed([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, -0x75

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x42

    :try_start_0
    new-array v1, v1, [B

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/16 v3, 0x21

    :try_start_4
    aget-byte v3, v1, v3

    sparse-switch v3, :sswitch_data_0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Unknown LDB type: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :goto_2
    if-eqz p0, :cond_0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :sswitch_0
    const/16 v3, 0x35

    :try_start_7
    aget-byte v4, v1, v3

    const/16 v3, 0x37

    aget-byte v3, v1, v3

    const/16 v5, 0x3a

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x39

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_0

    move-object v3, v1

    :goto_3
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-direct {v1, v4, v3, v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_4
    if-eqz p0, :cond_2

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_2
    :goto_5
    move-object v0, v1

    goto :goto_1

    :pswitch_0
    :try_start_a
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-object v3, v1

    goto :goto_3

    :pswitch_1
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-object v3, v1

    goto :goto_3

    :sswitch_1
    const/16 v3, 0x2a

    aget-byte v3, v1, v3

    const/16 v4, 0x29

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x28

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    sget-object v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-direct {v1, v3, v5, v4}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :goto_6
    if-eqz p0, :cond_3

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_3
    :goto_7
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_8
    :try_start_d
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error parsing LDB (not found): "

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v1, :cond_4

    :try_start_e
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :cond_4
    :goto_9
    if-eqz p0, :cond_0

    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_a
    :try_start_10
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error parsing LDB (exception): "

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v2, :cond_5

    :try_start_11
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :cond_5
    :goto_b
    if-eqz p0, :cond_0

    :try_start_12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_c
    if-eqz v2, :cond_6

    :try_start_13
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_6
    :goto_d
    if-eqz p0, :cond_7

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    :cond_7
    :goto_e
    throw v0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto :goto_9

    :catch_d
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_d

    :catch_f
    move-exception v1

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :catch_10
    move-exception v1

    goto :goto_a

    :catch_11
    move-exception v1

    move-object v1, v2

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "load("

    const-string/jumbo v3, ")"

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "ACLdbInfo.load FileNotFoundException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "ACLdbInfo.load IOException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method protected getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    return v0
.end method

.method protected getXT9LanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return v0
.end method
