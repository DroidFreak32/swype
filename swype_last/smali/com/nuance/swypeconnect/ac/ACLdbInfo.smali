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
    .registers 2

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
    .registers 11

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    aget-byte v1, p0, v0

    if-ltz v1, :cond_12

    const/16 v0, 0x23

    aget-byte v0, p0, v0

    if-ltz v0, :cond_12

    const/4 v2, 0x3

    if-gt v1, v2, :cond_11

    shr-int/lit8 v0, v0, 0x2

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public static gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    const/4 v3, 0x2

    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p0, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-array v0, v3, [B

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    if-ne v2, v3, :cond_20

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isCompressed([B)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_1f
    :goto_1f
    return-object p0

    :cond_20
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2b} :catch_2d

    move-object p0, v0

    goto :goto_1f

    :catch_2d
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACLdbInfo.gzWrapInputStream IOException trying to wrap stream."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public static isCompressed([B)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_a

    :cond_8
    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    aget-byte v2, p0, v1

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_16

    aget-byte v2, p0, v0

    const/16 v3, -0x75

    if-eq v2, v3, :cond_9

    :cond_16
    move v0, v1

    goto :goto_9
.end method

.method public static load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0x42

    :try_start_3
    new-array v1, v1, [B

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_92
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_ab
    .catchall {:try_start_3 .. :try_end_a} :catchall_cb

    :try_start_a
    invoke-virtual {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read([B)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_d} :catch_fa
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f8
    .catchall {:try_start_a .. :try_end_d} :catchall_f3

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    :try_start_11
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_d9

    :goto_14
    if-eqz p0, :cond_19

    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_dc

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    const/16 v3, 0x21

    :try_start_1c
    aget-byte v3, v1, v3

    sparse-switch v3, :sswitch_data_fe

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Unknown LDB type: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2d} :catch_fa
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_f8
    .catchall {:try_start_1c .. :try_end_2d} :catchall_f3

    :try_start_2d
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_e8

    :goto_30
    if-eqz p0, :cond_19

    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_19

    :catch_36
    move-exception v1

    goto :goto_19

    :sswitch_38
    const/16 v3, 0x35

    :try_start_3a
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

    packed-switch v3, :pswitch_data_108

    move-object v3, v1

    :goto_57
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-direct {v1, v4, v3, v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;I)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_5c} :catch_fa
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5c} :catch_f8
    .catchall {:try_start_3a .. :try_end_5c} :catchall_f3

    :try_start_5c
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_df

    :goto_5f
    if-eqz p0, :cond_64

    :try_start_61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_e2

    :cond_64
    :goto_64
    move-object v0, v1

    goto :goto_19

    :pswitch_66
    :try_start_66
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->ALM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-object v3, v1

    goto :goto_57

    :pswitch_6a
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-object v3, v1

    goto :goto_57

    :sswitch_6e
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
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_88} :catch_fa
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_88} :catch_f8
    .catchall {:try_start_66 .. :try_end_88} :catchall_f3

    :try_start_88
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_e4

    :goto_8b
    if-eqz p0, :cond_90

    :try_start_8d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_e6

    :cond_90
    :goto_90
    move-object v0, v1

    goto :goto_19

    :catch_92
    move-exception v1

    move-object v1, v0

    :goto_94
    :try_start_94
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error parsing LDB (not found): "

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_f5

    if-eqz v1, :cond_a1

    :try_start_9e
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_eb

    :cond_a1
    :goto_a1
    if-eqz p0, :cond_19

    :try_start_a3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a8

    goto/16 :goto_19

    :catch_a8
    move-exception v1

    goto/16 :goto_19

    :catch_ab
    move-exception v1

    move-object v2, v0

    :goto_ad
    :try_start_ad
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error parsing LDB (exception): "

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_ad .. :try_end_bc} :catchall_f3

    if-eqz v2, :cond_c1

    :try_start_be
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_ed

    :cond_c1
    :goto_c1
    if-eqz p0, :cond_19

    :try_start_c3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c8

    goto/16 :goto_19

    :catch_c8
    move-exception v1

    goto/16 :goto_19

    :catchall_cb
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_ce
    if-eqz v2, :cond_d3

    :try_start_d0
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_ef

    :cond_d3
    :goto_d3
    if-eqz p0, :cond_d8

    :try_start_d5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_f1

    :cond_d8
    :goto_d8
    throw v0

    :catch_d9
    move-exception v1

    goto/16 :goto_14

    :catch_dc
    move-exception v1

    goto/16 :goto_19

    :catch_df
    move-exception v0

    goto/16 :goto_5f

    :catch_e2
    move-exception v0

    goto :goto_64

    :catch_e4
    move-exception v0

    goto :goto_8b

    :catch_e6
    move-exception v0

    goto :goto_90

    :catch_e8
    move-exception v1

    goto/16 :goto_30

    :catch_eb
    move-exception v1

    goto :goto_a1

    :catch_ed
    move-exception v1

    goto :goto_c1

    :catch_ef
    move-exception v1

    goto :goto_d3

    :catch_f1
    move-exception v1

    goto :goto_d8

    :catchall_f3
    move-exception v0

    goto :goto_ce

    :catchall_f5
    move-exception v0

    move-object v2, v1

    goto :goto_ce

    :catch_f8
    move-exception v1

    goto :goto_ad

    :catch_fa
    move-exception v1

    move-object v1, v2

    goto :goto_94

    nop

    :sswitch_data_fe
    .sparse-switch
        0x2 -> :sswitch_38
        0xa -> :sswitch_6e
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x9
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_6a
    .end packed-switch
.end method

.method public static load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "load("

    const-string/jumbo v3, ")"

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_40

    move-result-object v2

    :goto_23
    if-eqz v2, :cond_39

    :try_start_25
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5c

    move-result-object v0

    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2e} :catch_48
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_52

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    :try_start_2f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_40

    move-result-object v2

    goto :goto_23

    :cond_39
    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3e
    :goto_3e
    move-object v0, v1

    goto :goto_2e

    :catchall_40
    move-exception v0

    move-object v2, v1

    :goto_42
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_47
    throw v0
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_48} :catch_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_52

    :catch_48
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "ACLdbInfo.load FileNotFoundException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    :catch_52
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "ACLdbInfo.load IOException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    :catchall_5c
    move-exception v0

    goto :goto_42
.end method


# virtual methods
.method protected getType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    if-nez v0, :cond_7

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Unspecified:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->type:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    goto :goto_6
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    return v0
.end method

.method protected getXT9LanguageId()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return v0
.end method
