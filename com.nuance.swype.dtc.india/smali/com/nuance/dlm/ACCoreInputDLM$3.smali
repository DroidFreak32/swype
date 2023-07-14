.class final Lcom/nuance/dlm/ACCoreInputDLM$3;
.super Ljava/lang/Object;
.source "ACCoreInputDLM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/dlm/ACCoreInputDLM;->initializeACChineseDLM(Lcom/nuance/swype/connect/Connect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connect:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/dlm/ACCoreInputDLM$3;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/nuance/dlm/ACChineseInput;

    iget-object v1, p0, Lcom/nuance/dlm/ACCoreInputDLM$3;->val$connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACChineseInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    invoke-static {v0}, Lcom/nuance/dlm/ACCoreInputDLM;->access$202(Lcom/nuance/dlm/ACChineseInput;)Lcom/nuance/dlm/ACChineseInput;

    .line 76
    return-void
.end method
