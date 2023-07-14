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
    .locals 2

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
    .locals 4
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

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v2}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3000
    :try_start_1
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/a/a/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 4000
    iput-object p0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    .line 1000
    invoke-virtual {p1}, Lcom/a/a/d;->t()J

    move-result-wide v2

    .line 0
    iput-wide v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    goto :goto_0

    :sswitch_4
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    .line 2000
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v2

    .line 0
    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    goto :goto_0

    :sswitch_6
    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/a/a/j; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;J)J
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    return p1
.end method

.method static synthetic access$702(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Lcom/a/a/c;)Lcom/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method private initFields()V
    .locals 2

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
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->access$100()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1
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
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;

    return-object v0
.end method

.method public final getDeviceID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getDeviceIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->deviceID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public final getNumPredictionsRequired()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    return v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .locals 1
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
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    return-object v0
.end method

.method public final getRequestTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 12

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    .line 0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_2
    iget v5, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v4, :cond_3

    iget-wide v6, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    .line 8000
    invoke-static {v3}, Lcom/a/a/e;->e(I)I

    move-result v5

    .line 10000
    const-wide/16 v8, -0x80

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 8000
    :goto_1
    add-int/2addr v1, v5

    .line 0
    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    invoke-static {v4, v1}, Lcom/a/a/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getXt9VersionBytes()Lcom/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedSerializedSize:I

    goto :goto_0

    .line 10000
    :cond_7
    const-wide/16 v8, -0x4000

    and-long/2addr v8, v6

    cmp-long v1, v8, v10

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    const-wide/32 v8, -0x200000

    and-long/2addr v8, v6

    cmp-long v1, v8, v10

    if-nez v1, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_a

    move v1, v4

    goto :goto_1

    :cond_a
    const-wide v2, -0x800000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_b

    const/4 v1, 0x5

    goto :goto_1

    :cond_b
    const-wide v2, -0x40000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_c

    const/4 v1, 0x6

    goto :goto_1

    :cond_c
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_d

    const/4 v1, 0x7

    goto :goto_1

    :cond_d
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_e

    const/16 v1, 0x8

    goto :goto_1

    :cond_e
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v6

    cmp-long v1, v2, v10

    if-nez v1, :cond_f

    const/16 v1, 0x9

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0xa

    goto/16 :goto_1
.end method

.method public final getTransactionID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getTransactionIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->transactionID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public final getXt9Version()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getXt9VersionBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->xt9Version_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public final hasDeviceID()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNumPredictionsRequired()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPredictionData()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTransactionID()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasXt9Version()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;)Lcom/nuance/connect/proto/Prediction$PredictionRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 1
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
    .locals 7
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

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_1
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_2

    iget-wide v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->requestTimestamp_:J

    .line 5000
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/a/a/e;->c(II)V

    .line 7000
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/a/a/e;->d(I)V

    .line 0
    :cond_2
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->numPredictionsRequired_:I

    invoke-virtual {p1, v6, v0}, Lcom/a/a/e;->a(II)V

    :cond_3
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->predictionData_:Lcom/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_4
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionRequestV1;->getXt9VersionBytes()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_5
    return-void

    .line 7000
    :cond_6
    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Lcom/a/a/e;->d(I)V

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    goto :goto_0
.end method
