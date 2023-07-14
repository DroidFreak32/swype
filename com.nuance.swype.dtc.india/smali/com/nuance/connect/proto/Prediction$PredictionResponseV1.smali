.class public final Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$PredictionResponseV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionResponseV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;
    }
.end annotation


# static fields
.field public static final CORETIME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICTIONRESULT_FIELD_NUMBER:I = 0x2

.field public static final TIMESPENT_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private coreTime_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private predictionResult_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation
.end field

.field private timeSpent_:I

.field private transactionID_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x2

    .line 0
    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedIsInitialized:B

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->initFields()V

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v3}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1000
    :try_start_1
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    and-int/lit8 v3, v1, 0x2

    if-eq v3, v5, :cond_2

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    sget-object v4, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-virtual {p1, v4, p2}, Lcom/a/a/d;->a(Lcom/a/a/p;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/a/a/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 2000
    iput-object p0, v2, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    iget v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v3

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    goto :goto_0

    :sswitch_4
    iget v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v3

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I
    :try_end_4
    .catch Lcom/a/a/j; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;->access$1100()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method


# virtual methods
.method public final getCoreTime()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;

    return-object v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getPredictionResult(I)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public final getPredictionResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPredictionResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    return-object v0
.end method

.method public final getPredictionResultOrBuilder(I)Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;

    return-object v0
.end method

.method public final getPredictionResultOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-static {v0}, Lcom/a/a/e;->b$3eface7e(Lcom/a/a/n;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    invoke-static {v0, v1}, Lcom/a/a/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I

    invoke-static {v4, v0}, Lcom/a/a/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iput v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedSerializedSize:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final getTimeSpent()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    return v0
.end method

.method public final getTransactionID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getTransactionIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->transactionID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public final hasCoreTime()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

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

.method public final hasTimeSpent()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

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

.method public final hasTransactionID()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1$Builder;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getSerializedSize()I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getTransactionIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->predictionResult_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {p1, v0}, Lcom/a/a/e;->a$3eface71(Lcom/a/a/n;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->timeSpent_:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(II)V

    :cond_2
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->coreTime_:I

    invoke-virtual {p1, v2, v0}, Lcom/a/a/e;->a(II)V

    :cond_3
    return-void
.end method
