.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionLogEntry"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

.field private e:Z


# direct methods
.method protected constructor <init>(ILcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->a:I

    invoke-static {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionId()[B

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->FormatUuid([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->b:Ljava/lang/String;

    :goto_1d
    const-string/jumbo v0, "INTERNAL_ERROR"

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->e:Z

    return-void

    :cond_28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->b:Ljava/lang/String;

    goto :goto_1d
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    const-string/jumbo v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    :goto_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    goto :goto_d
.end method


# virtual methods
.method protected getCompCause()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getTranId()I
    .registers 2

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->a:I

    return v0
.end method

.method protected isSent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->e:Z

    return v0
.end method

.method protected setCompCause(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    const-string/jumbo v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    :goto_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;)V

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->c:Ljava/lang/String;

    goto :goto_11
.end method

.method protected setSent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->e:Z

    return-void
.end method

.method protected setSessionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->b:Ljava/lang/String;

    return-void
.end method
