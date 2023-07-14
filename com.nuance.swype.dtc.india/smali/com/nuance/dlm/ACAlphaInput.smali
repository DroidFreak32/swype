.class public Lcom/nuance/dlm/ACAlphaInput;
.super Ljava/lang/Object;
.source "ACAlphaInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/dlm/ACAlphaInput$InputHandler;
    }
.end annotation


# static fields
.field private static final SEND_EVENTS:I = 0x1

.field private static final SEND_EVENTS_INTERVAL:I = 0x2710

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

.field private connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

.field private handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "ACAlphaInput"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-direct {v0, p0}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;-><init>(Lcom/nuance/dlm/ACAlphaInput;)V

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    .line 55
    iput-object p1, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    .line 59
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaRegisterEventHandlerCallback()I

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private native acAlphaDeleteCategory(I)I
.end method

.method private native acAlphaDeleteCategoryLanguage(II)I
.end method

.method private native acAlphaExportAsEvent(ZI)I
.end method

.method private native acAlphaGetCachedEvents()[B
.end method

.method public static native acAlphaLegacySecretKey()Ljava/lang/String;
.end method

.method private native acAlphaProcessEvent([B)I
.end method

.method private native acAlphaRegisterEventHandlerCallback()I
.end method

.method private native acAlphaScanBuffer([CIIIIIZZ)I
.end method

.method private native acAlphaScanSessionBegin([B[B[BII)I
.end method

.method private native acAlphaScanSessionEnd()I
.end method

.method static synthetic access$000(Lcom/nuance/dlm/ACAlphaInput;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    return-void
.end method

.method private onEventCacheFull()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 99
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onEventCacheFull"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 101
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-virtual {v0, v4}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 102
    return-void
.end method

.method private onEventCallback([BZ)V
    .locals 4
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 91
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onEventCallback"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    .line 95
    :cond_0
    return-void
.end method

.method private onFirstCachedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onFirstCachedEvent"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-virtual {v0, v4}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    return-void
.end method

.method static registerEventHandlerCallback()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method private sendEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "sendEvents"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaGetCachedEvents()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategory(I)I

    .line 138
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategoryLanguage(II)I

    .line 143
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 2
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaExportAsEvent(ZI)I

    .line 131
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 132
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onResume"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 79
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-virtual {v0, v4}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 80
    return-void
.end method

.method public onYield()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public processEvent([B)V
    .locals 0
    .param p1, "event"    # [B

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaProcessEvent([B)I

    .line 126
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 84
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseAlphaDlm()V

    .line 88
    return-void
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context1"    # Ljava/lang/String;
    .param p2, "context2"    # Ljava/lang/String;
    .param p3, "context3"    # Ljava/lang/String;
    .param p4, "userAction"    # I
    .param p5, "scanAction"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v4, "scanBegin context1="

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 157
    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    const-string/jumbo v0, "UTF-8"

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "UTF-8"

    .line 160
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :cond_0
    move-object v0, p0

    move v4, p4

    move v5, p5

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionBegin([B[B[BII)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_2
    return-void

    :cond_1
    move-object v1, v3

    .line 158
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 159
    goto :goto_1

    .line 162
    :catch_0
    move-exception v6

    .line 163
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public scanBuffer([CIIIIIZZ)Z
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "len"    # I
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .param p5, "xt9LanguageId"    # I
    .param p6, "wordQuality"    # I
    .param p7, "sentenceBased"    # Z
    .param p8, "rescanning"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    sget-object v3, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "scanBuffer buffer="

    aput-object v0, v4, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    const-string/jumbo v5, "; wordQuality: "

    aput-object v5, v4, v0

    const/4 v5, 0x3

    if-eqz p6, :cond_0

    const-string/jumbo v0, "high"

    :goto_0
    aput-object v0, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 149
    invoke-direct/range {p0 .. p8}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanBuffer([CIIIIIZZ)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    .line 148
    :cond_0
    const-string/jumbo v0, "low"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 149
    goto :goto_1
.end method

.method public scanEnd()V
    .locals 4

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionEnd()I

    .line 171
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "scanEnd"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 172
    return-void
.end method
