.class Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingDLMWipeEvent"
.end annotation


# static fields
.field private static final ET9AW_DLM_REQUEST_CONTENTRESET:I = 0x3

.field private static final ET9AW_DLM_REQUEST_WORDDISCARDED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 2

    .prologue
    .line 4772
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 4772
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    return-void
.end method

.method private recordDLMWipeEvent(Ljava/lang/String;III)V
    .registers 13
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "requestType"    # I
    .param p3, "reasonCode"    # I
    .param p4, "langaugeId"    # I

    .prologue
    const/4 v7, 0x3

    .line 4795
    if-ne p2, v7, :cond_6a

    .line 4797
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    .line 4798
    .local v1, "isSyncEnabled":Z
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    .line 4799
    .local v0, "LangId":I
    const/4 v2, 0x0

    .line 4800
    .local v2, "langName":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputMethods;->getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 4801
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputMethods;->getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    iget-object v2, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 4803
    :cond_42
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "recordDLMWipeEvent...ET9AW_DLM_REQUEST_CONTENTRESET..."

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isSyncEnabled: "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 4804
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string/jumbo v5, "...langName: "

    aput-object v5, v4, v7

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 4803
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4805
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->DLM_CONTENT_RESET:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    invoke-static {v3, v1, v2}, Lcom/nuance/swype/usagedata/UsageData;->recordDLMWipe$627721fe(Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;ZLjava/lang/String;)V

    .line 4809
    .end local v0    # "LangId":I
    .end local v1    # "isSyncEnabled":Z
    .end local v2    # "langName":Ljava/lang/String;
    :cond_6a
    return-void
.end method


# virtual methods
.method public disableLoggingDLMWipeEvent()V
    .registers 3

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->unRegisterLoggingDLMWipeCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;)V

    .line 4791
    return-void
.end method

.method public enableLoggingDLMWipeEvent()V
    .registers 2

    .prologue
    .line 4787
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerLoggingDLMWipeEventCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;)V

    .line 4788
    return-void
.end method

.method public onRequestLoggingDLMWipeEvent(Ljava/lang/String;III)Z
    .registers 10
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "requestType"    # I
    .param p3, "reasonCode"    # I
    .param p4, "langaugeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4780
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onRequestLoggingDLMWipeEvent...word: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...requestType: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 4781
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...reasonCode: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "...langaugeId: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4780
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4782
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->recordDLMWipeEvent(Ljava/lang/String;III)V

    .line 4783
    return v4
.end method
