.class public final Lcom/nuance/swype/inapp/util/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# instance fields
.field public mMessage:Ljava/lang/String;

.field public mResponse:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 32
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 33
    :cond_11
    invoke-static {p1}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 38
    :goto_17
    return-void

    .line 36
    :cond_18
    invoke-static {p2, p1}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    goto :goto_17
.end method


# virtual methods
.method public final isSuccess()Z
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IabResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
