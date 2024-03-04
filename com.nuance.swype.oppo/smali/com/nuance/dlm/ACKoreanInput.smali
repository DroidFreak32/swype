.class public Lcom/nuance/dlm/ACKoreanInput;
.super Ljava/lang/Object;
.source "ACKoreanInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

.field private connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanRegisterEventHandlerCallback()I

    .line 27
    return-void

    .line 21
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acKoreanDeleteCategory(I)I
.end method

.method private final native acKoreanDeleteCategoryLanguage(II)I
.end method

.method private final native acKoreanExportAsEvent(ZI)I
.end method

.method private final native acKoreanProcessEvent([B)I
.end method

.method private final native acKoreanRegisterEventHandlerCallback()I
.end method

.method private final native acKoreanScanBuffer([CIIIIZZ)I
.end method

.method private onEventCallback([BZ)V
    .locals 1
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->onKoreanDlmEvent([BZ)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanDeleteCategory(I)I

    .line 52
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanDeleteCategoryLanguage(II)I

    .line 57
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanExportAsEvent(ZI)I

    .line 47
    return-void
.end method

.method public processEvent([B)V
    .locals 0
    .param p1, "event"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanProcessEvent([B)I

    .line 42
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/dlm/ACKoreanInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseKoreanDlm()V

    .line 31
    return-void
.end method

.method public scanBuffer([CIIZZ)Z
    .locals 8
    .param p1, "buffer"    # [C
    .param p2, "len"    # I
    .param p3, "wordQuality"    # I
    .param p4, "sentenceBased"    # Z
    .param p5, "rescanning"    # Z

    .prologue
    const/4 v3, 0x0

    .line 62
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanScanBuffer([CIIIIZZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
