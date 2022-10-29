.class public final Lcom/nuance/swype/inapp/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/nuance/swype/inapp/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 38
    new-instance v0, Lcom/nuance/swype/inapp/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/nuance/swype/inapp/util/IabException;-><init>(Lcom/nuance/swype/inapp/util/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/inapp/util/IabResult;)V
    .registers 3
    .param p1, "r"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(Lcom/nuance/swype/inapp/util/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/inapp/util/IabResult;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "r"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 34
    .line 1040
    iget-object v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 34
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabException;->mResult:Lcom/nuance/swype/inapp/util/IabResult;

    .line 36
    return-void
.end method
