.class public Lcom/nuance/dlm/ACChineseInput;
.super Ljava/lang/Object;
.source "ACChineseInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

.field private connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/dlm/ACChineseInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dlm/ACChineseInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindChineseDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dlm/ACChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACChineseInput;->acChineseRegisterEventHandlerCallback()I

    .line 27
    return-void

    .line 23
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acChineseDeleteCategory(I)I
.end method

.method private final native acChineseDeleteCategoryLanguage(II)I
.end method

.method private final native acChineseExportAsEvent(ZI)I
.end method

.method private final native acChineseProcessEvent([B)I
.end method

.method private final native acChineseRegisterEventHandlerCallback()I
.end method

.method private onEventCallback([BZ)V
    .locals 1
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/dlm/ACChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/nuance/dlm/ACChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->onChineseDlmEvent([BZ)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACChineseInput;->acChineseDeleteCategory(I)I

    .line 49
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACChineseInput;->acChineseDeleteCategoryLanguage(II)I

    .line 53
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACChineseInput;->acChineseExportAsEvent(ZI)I

    .line 45
    return-void
.end method

.method public processEvent([B)V
    .locals 0
    .param p1, "event"    # [B

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACChineseInput;->acChineseProcessEvent([B)I

    .line 41
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/dlm/ACChineseInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseChineseDlm()V

    .line 31
    return-void
.end method
