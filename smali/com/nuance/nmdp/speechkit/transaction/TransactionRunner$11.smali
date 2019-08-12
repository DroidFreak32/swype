.class Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$11;
.super Ljava/lang/Object;
.source "TransactionRunner.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createSenderListener()Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$11;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(S[B)V
    .locals 0
    .param p1, "errorCode"    # S
    .param p2, "data"    # [B

    .prologue
    .line 685
    return-void
.end method

.method public succeeded([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 679
    return-void
.end method
