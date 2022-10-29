.class final Lcom/nuance/dlm/ACCoreInputDLM$1;
.super Ljava/lang/Object;
.source "ACCoreInputDLM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/dlm/ACCoreInputDLM;->initializeACAlphaInput(Lcom/nuance/swype/connect/Connect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connect:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nuance/dlm/ACCoreInputDLM$1;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 30
    # getter for: Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;
    invoke-static {}, Lcom/nuance/dlm/ACCoreInputDLM;->access$000()Lcom/nuance/dlm/ACAlphaInput;

    move-result-object v0

    if-nez v0, :cond_14

    .line 31
    new-instance v0, Lcom/nuance/dlm/ACAlphaInput;

    iget-object v1, p0, Lcom/nuance/dlm/ACCoreInputDLM$1;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACAlphaInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    # setter for: Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;
    invoke-static {v0}, Lcom/nuance/dlm/ACCoreInputDLM;->access$002(Lcom/nuance/dlm/ACAlphaInput;)Lcom/nuance/dlm/ACAlphaInput;

    .line 33
    :cond_14
    return-void
.end method
