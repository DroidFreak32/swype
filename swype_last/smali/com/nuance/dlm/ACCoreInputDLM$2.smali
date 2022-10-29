.class final Lcom/nuance/dlm/ACCoreInputDLM$2;
.super Ljava/lang/Object;
.source "ACCoreInputDLM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/dlm/ACCoreInputDLM;->initializeACKoreanInput(Lcom/nuance/swype/connect/Connect;)V
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
    .line 46
    iput-object p1, p0, Lcom/nuance/dlm/ACCoreInputDLM$2;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 49
    # getter for: Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;
    invoke-static {}, Lcom/nuance/dlm/ACCoreInputDLM;->access$100()Lcom/nuance/dlm/ACKoreanInput;

    move-result-object v0

    if-nez v0, :cond_14

    .line 50
    new-instance v0, Lcom/nuance/dlm/ACKoreanInput;

    iget-object v1, p0, Lcom/nuance/dlm/ACCoreInputDLM$2;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACKoreanInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    # setter for: Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;
    invoke-static {v0}, Lcom/nuance/dlm/ACCoreInputDLM;->access$102(Lcom/nuance/dlm/ACKoreanInput;)Lcom/nuance/dlm/ACKoreanInput;

    .line 52
    :cond_14
    return-void
.end method
