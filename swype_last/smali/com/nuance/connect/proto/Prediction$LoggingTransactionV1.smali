.class public final Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingTransactionV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATIONNAME_FIELD_NUMBER:I = 0x7

.field public static final CCPSVERSION_FIELD_NUMBER:I = 0x6

.field public static final CLOUDTIME_FIELD_NUMBER:I = 0x4

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICTIONRESULT_FIELD_NUMBER:I = 0x2

.field public static final RESULTCODE_FIELD_NUMBER:I = 0x3

.field public static final TOTALTIME_FIELD_NUMBER:I = 0x5

.field public static final TRANSACTIONID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

.field private static final serialVersionUID:J


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private bitField0_:I

.field private ccpsVersion_:Ljava/lang/Object;

.field private cloudTime_:I

.field private countryCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private resultCode_:I

.field private totalTime_:I

.field private transactionID_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 0
    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->initFields()V

    const/4 v0, 0x0

    move v2, v0

    :cond_e
    :goto_e
    if-nez v2, :cond_c3

    :try_start_10
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_ca

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v0

    if-nez v0, :cond_e

    move v2, v3

    goto :goto_e

    :sswitch_1f
    move v2, v3

    goto :goto_e

    :sswitch_21
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;
    :try_end_2d
    .catch Lcom/a/a/j; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_64
    .catchall {:try_start_10 .. :try_end_2d} :catchall_32

    goto :goto_e

    :catch_2e
    move-exception v0

    .line 4000
    :try_start_2f
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_37
    const/4 v0, 0x0

    :try_start_38
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_c7

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_46
    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-virtual {p1, v0, p2}, Lcom/a/a/d;->a(Lcom/a/a/p;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    :cond_5d
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I
    :try_end_63
    .catch Lcom/a/a/j; {:try_start_38 .. :try_end_63} :catch_2e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_63} :catch_64
    .catchall {:try_start_38 .. :try_end_63} :catchall_32

    goto :goto_e

    :catch_64
    move-exception v0

    :try_start_65
    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 5000
    iput-object p0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_32

    :sswitch_71
    :try_start_71
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    .line 1000
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    goto :goto_e

    :sswitch_7e
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    .line 2000
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    goto :goto_e

    :sswitch_8b
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    .line 3000
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    goto/16 :goto_e

    :sswitch_99
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    goto/16 :goto_e

    :sswitch_a7
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    goto/16 :goto_e

    :sswitch_b5
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;
    :try_end_c1
    .catch Lcom/a/a/j; {:try_start_71 .. :try_end_c1} :catch_2e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_c1} :catch_64
    .catchall {:try_start_71 .. :try_end_c1} :catchall_32

    goto/16 :goto_e

    :cond_c3
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->makeExtensionsImmutable()V

    return-void

    :cond_c7
    move-object v1, v0

    goto/16 :goto_46

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_37
        0x18 -> :sswitch_71
        0x20 -> :sswitch_7e
        0x28 -> :sswitch_8b
        0x32 -> :sswitch_99
        0x3a -> :sswitch_a7
        0x42 -> :sswitch_b5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .registers 1

    # invokes: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->access$2600()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method


# virtual methods
.method public final getApplicationName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getApplicationNameBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->applicationName_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final getCcpsVersion()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getCcpsVersionBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final getCloudTime()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    return v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getCountryCodeBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->countryCode_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 2

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getPredictionResult()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public final getResultCode()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1b
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-static {v1}, Lcom/a/a/e;->b$3eface7e(Lcom/a/a/n;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_37

    const/4 v1, 0x3

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    invoke-static {v1, v2}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_37
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_44

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    invoke-static {v3, v1}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_54

    const/4 v1, 0x5

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    invoke-static {v1, v2}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_66

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCcpsVersionBytes()Lcom/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_78

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getApplicationNameBytes()Lcom/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_78
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_89

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCountryCodeBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_89
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedSerializedSize:I

    goto/16 :goto_9
.end method

.method public final getTotalTime()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    return v0
.end method

.method public final getTransactionID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getTransactionIDBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final hasApplicationName()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hasCcpsVersion()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hasCloudTime()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hasCountryCode()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hasPredictionResult()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final hasResultCode()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final hasTotalTime()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hasTransactionID()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/h;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/a/a/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getSerializedSize()I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_14
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-virtual {p1, v0}, Lcom/a/a/e;->a$3eface71(Lcom/a/a/n;)V

    :cond_20
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_2c

    const/4 v0, 0x3

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(II)V

    :cond_2c
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_37

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I

    invoke-virtual {p1, v2, v0}, Lcom/a/a/e;->a(II)V

    :cond_37
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    const/4 v0, 0x5

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(II)V

    :cond_45
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCcpsVersionBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_55
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getApplicationNameBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_65
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_74

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCountryCodeBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_74
    return-void
.end method
