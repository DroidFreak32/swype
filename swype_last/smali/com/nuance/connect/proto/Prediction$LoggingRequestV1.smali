.class public final Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$LoggingRequestV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingRequestV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTIONS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceID_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private transactions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .registers 10
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

    iput-byte v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedIsInitialized:B

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->initFields()V

    move v1, v0

    :cond_f
    :goto_f
    if-nez v1, :cond_70

    :try_start_11
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_86

    invoke-virtual {p0, p1, p2, v3}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    goto :goto_f

    :sswitch_20
    move v1, v2

    goto :goto_f

    :sswitch_22
    iget v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

    invoke-virtual {p1}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;
    :try_end_2e
    .catch Lcom/a/a/j; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_60
    .catchall {:try_start_11 .. :try_end_2e} :catchall_80

    goto :goto_f

    :catch_2f
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 1000
    :try_start_33
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    :goto_37
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_43

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    :cond_43
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->makeExtensionsImmutable()V

    throw v0

    :sswitch_47
    and-int/lit8 v3, v0, 0x2

    if-eq v3, v5, :cond_54

    :try_start_4b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    or-int/lit8 v0, v0, 0x2

    :cond_54
    iget-object v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    sget-object v4, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-virtual {p1, v4, p2}, Lcom/a/a/d;->a(Lcom/a/a/p;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Lcom/a/a/j; {:try_start_4b .. :try_end_5f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5f} :catch_60
    .catchall {:try_start_4b .. :try_end_5f} :catchall_80

    goto :goto_f

    :catch_60
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :try_start_64
    new-instance v2, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 2000
    iput-object p0, v2, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v2
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_36

    :cond_70
    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_7c

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    :cond_7c
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->makeExtensionsImmutable()V

    return-void

    :catchall_80
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_37

    nop

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_47
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$4000(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .registers 1

    # invokes: Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->access$3800()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .registers 2

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    return-object v0
.end method

.method public final getDeviceID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    goto :goto_8
.end method

.method public final getDeviceIDBytes()Lcom/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->deviceID_:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/a/a/c;

    goto :goto_e
.end method

.method public final getParserForType()Lcom/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_8

    :goto_7
    return v2

    :cond_8
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_35

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/a/e;->b(ILcom/a/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_18
    move v2, v0

    :goto_19
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-static {v0}, Lcom/a/a/e;->b$3eface7e(Lcom/a/a/n;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_19

    :cond_32
    iput v2, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedSerializedSize:I

    goto :goto_7

    :cond_35
    move v0, v1

    goto :goto_18
.end method

.method public final getTransactions(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public final getTransactionsCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTransactionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method public final getTransactionsOrBuilder(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;

    return-object v0
.end method

.method public final getTransactionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method public final hasDeviceID()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

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

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .registers 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getSerializedSize()I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDeviceIDBytes()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(ILcom/a/a/c;)V

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->transactions_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {p1, v0}, Lcom/a/a/e;->a$3eface71(Lcom/a/a/n;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2a
    return-void
.end method
