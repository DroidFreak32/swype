.class public final Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$PredictionRequestV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionRequestV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x1

.field public static final NUMPREDICTIONSREQUIRED_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICTIONDATA_FIELD_NUMBER:I = 0x5

.field public static final REQUESTTIMESTAMP_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONID_FIELD_NUMBER:I = 0x2

.field public static final XT9VERSION_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceID_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numPredictionsRequired_:I

.field private predictionData_:Lcom/a/a/c;

.field private requestTimestamp_:J

.field private transactionID_:Ljava/lang/Object;

.field private xt9Version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 0
    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->initFields()V

    const/4 v0, 0x0

    :cond_d
    :goto_d
    if-nez v0, :cond_84

    :try_start_f
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_88

    invoke-virtual {p0, p1, p2, v2}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d

    :sswitch_1e
    move v0, v1

    goto :goto_d

    :sswitch_20
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;
    :try_end_2c
    .catch Lcom/a/a/j; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_43
    .catchall {:try_start_f .. :try_end_2c} :catchall_31

    goto :goto_d

    :catch_2d
    move-exception v0

    .line 3000
    :try_start_2e
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_36
    :try_start_36
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;
    :try_end_42
    .catch Lcom/a/a/j; {:try_start_36 .. :try_end_42} :catch_2d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_42} :catch_43
    .catchall {:try_start_36 .. :try_end_42} :catchall_31

    goto :goto_d

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 4000
    iput-object p0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_31

    :sswitch_50
    :try_start_50
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    .line 1000
    invoke-virtual {p1}, Lcom/a/a/d;->t()J

    move-result-wide v2

    .line 0
    iput-wide v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    goto :goto_d

    :sswitch_5d
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    .line 2000
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v2

    .line 0
    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    goto :goto_d

    :sswitch_6a
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    goto :goto_d

    :sswitch_77
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;
    :try_end_83
    .catch Lcom/a/a/j; {:try_start_50 .. :try_end_83} :catch_2d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_83} :catch_43
    .catchall {:try_start_50 .. :try_end_83} :catchall_31

    goto :goto_d

    :cond_84
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_36
        0x18 -> :sswitch_50
        0x20 -> :sswitch_5d
        0x2a -> :sswitch_6a
        0x32 -> :sswitch_77
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;J)J
    .registers 4

    iput-wide p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    return p1
.end method

.method static synthetic access$702(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Lcom/a/a/c;)Lcom/a/a/c;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    sget-object v0, Lcom/a/a/c;->a:Lcom/a/a/c;

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .registers 1

    # invokes: Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->access$100()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .registers 2

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public final getDeviceID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getDeviceIDBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final getNumPredictionsRequired()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    return v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getPredictionData()Lcom/a/a/c;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    return-object v0
.end method

.method public final getRequestTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .registers 13

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    .line 0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1d
    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v2, :cond_2c

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_2c
    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v4, :cond_41

    iget-wide v6, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    .line 8000
    invoke-static {v3}, Lcom/a/a/e;->e(I)I

    move-result v5

    .line 10000
    const-wide/16 v8, -0x80

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_75

    .line 8000
    :goto_3f
    add-int/2addr v1, v5

    .line 0
    add-int/2addr v0, v1

    :cond_41
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_50

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    invoke-static {v4, v1}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_60

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_60
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_72

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getXt9VersionBytes()Lcom/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_72
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    goto :goto_b

    .line 10000
    :cond_75
    const-wide/16 v8, -0x4000

    and-long/2addr v8, v6

    cmp-long v1, v8, v10

    if-nez v1, :cond_7e

    move v1, v2

    goto :goto_3f

    :cond_7e
    const-wide/32 v8, -0x200000

    and-long/2addr v8, v6

    cmp-long v1, v8, v10

    if-nez v1, :cond_88

    move v1, v3

    goto :goto_3f

    :cond_88
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_92

    move v1, v4

    goto :goto_3f

    :cond_92
    const-wide v2, -0x800000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_9e

    const/4 v1, 0x5

    goto :goto_3f

    :cond_9e
    const-wide v2, -0x40000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_aa

    const/4 v1, 0x6

    goto :goto_3f

    :cond_aa
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_b3

    const/4 v1, 0x7

    goto :goto_3f

    :cond_b3
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_bd

    const/16 v1, 0x8

    goto :goto_3f

    :cond_bd
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_c8

    const/16 v1, 0x9

    goto/16 :goto_3f

    :cond_c8
    const/16 v1, 0xa

    goto/16 :goto_3f
.end method

.method public final getTransactionID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getTransactionIDBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final getXt9Version()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getXt9VersionBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final hasDeviceID()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasNumPredictionsRequired()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

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

.method public final hasPredictionData()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

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

.method public final hasRequestTimestamp()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

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

.method public final hasTransactionID()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

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

.method public final hasXt9Version()Z
    .registers 3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 0
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getSerializedSize()I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_13
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_20
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_3a

    iget-wide v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    .line 5000
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/a/a/e;->c(II)V

    .line 7000
    :goto_2d
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_66

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/a/a/e;->d(I)V

    .line 0
    :cond_3a
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_47

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    invoke-virtual {p1, v6, v0}, Lcom/a/a/e;->a(II)V

    :cond_47
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_55

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_55
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_65

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getXt9VersionBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_65
    return-void

    .line 7000
    :cond_66
    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Lcom/a/a/e;->d(I)V

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    goto :goto_2d
.end method
