.class public final Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
.super Lcom/a/a/h$a;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$LoggingRequestV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/h$a",
        "<",
        "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;",
        "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;",
        ">;",
        "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1OrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceID_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h$a;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$3800()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTransactionsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addAllTransactions(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;)",
            "Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/a/a/h$a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final addTransactions(ILcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final addTransactions(ILcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final addTransactions(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTransactions(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->newUninitializedMessageException(Lcom/a/a/n;)Lcom/a/a/v;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;-><init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V

    iget v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4002(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4102(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;Ljava/util/List;)Ljava/util/List;

    invoke-static {v2, v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4202(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/a/a/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clear()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clear()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    invoke-super {p0}, Lcom/a/a/h$a;->clear()Lcom/a/a/h$a;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearDeviceID()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    return-object p0
.end method

.method public final clearTransactions()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/a/a/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/a/a/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getDeviceIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public final getTransactions(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    return-object v0
.end method

.method public final getTransactionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTransactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasDeviceID()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/a/a/h;)Lcom/a/a/h$a;
    .locals 1

    check-cast p1, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p1, p2}, Lcom/a/a/p;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1000
    :try_start_1
    iget-object v0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->hasDeviceID()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4000(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4100(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4100(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->access$4100(Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final removeTransactions(I)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public final setDeviceID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    return-object p0
.end method

.method public final setDeviceIDBytes(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->deviceID_:Ljava/lang/Object;

    return-object p0
.end method

.method public final setTransactions(ILcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setTransactions(ILcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->ensureTransactionsIsMutable()V

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
