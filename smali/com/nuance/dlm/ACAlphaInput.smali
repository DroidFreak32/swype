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
    .line 24
    const-string v0, "ACAlphaInput"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-direct {v0, p0}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;-><init>(Lcom/nuance/dlm/ACAlphaInput;)V

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    .line 54
    iput-object p1, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    .line 58
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaRegisterEventHandlerCallback()I

    .line 68
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acAlphaDeleteCategory(I)I
.end method

.method private final native acAlphaDeleteCategoryLanguage(II)I
.end method

.method private final native acAlphaExportAsEvent(ZI)I
.end method

.method private final native acAlphaGetCachedEvents()[B
.end method

.method private final native acAlphaProcessEvent([B)I
.end method

.method private final native acAlphaRegisterEventHandlerCallback()I
.end method

.method private final native acAlphaScanBuffer([CIIIIIZZ)I
.end method

.method private final native acAlphaScanSessionBegin([B[B[BII)I
.end method

.method private final native acAlphaScanSessionEnd()I
.end method

.method static synthetic access$000(Lcom/nuance/dlm/ACAlphaInput;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    return-void
.end method

.method private onEventCacheFull()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onEventCacheFull"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 100
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 101
    return-void
.end method

.method private onEventCallback([BZ)V
    .locals 2
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 90
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onEventCallback"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    .line 94
    :cond_0
    return-void
.end method

.method private onFirstCachedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onFirstCachedEvent"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    invoke-virtual {v0, v4}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    return-void
.end method

.method private sendEvents()V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "sendEvents"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaGetCachedEvents()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategory(I)I

    .line 137
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaDeleteCategoryLanguage(II)I

    .line 142
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 2
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaExportAsEvent(ZI)I

    .line 130
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 131
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 78
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->handler:Lcom/nuance/dlm/ACAlphaInput$InputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->removeMessages(I)V

    .line 79
    return-void
.end method

.method public onYield()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public processEvent([B)V
    .locals 0
    .param p1, "event"    # [B

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaProcessEvent([B)I

    .line 125
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V

    .line 83
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmEventCallback;->unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nuance/dlm/ACAlphaInput;->connector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->releaseAlphaDlm()V

    .line 87
    return-void
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context1"    # Ljava/lang/String;
    .param p2, "context2"    # Ljava/lang/String;
    .param p3, "context3"    # Ljava/lang/String;
    .param p4, "userAction"    # I
    .param p5, "scanAction"    # I

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scanBegin context1="

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    :cond_0
    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionBegin([B[B[BII)I

    .line 160
    return-void

    :cond_1
    move-object v1, v3

    .line 155
    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method

.method public scanBuffer([CIIIIIZZ)Z
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "len"    # I
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .param p5, "xt9LanguageId"    # I
    .param p6, "wordQuality"    # I
    .param p7, "sentenceBased"    # Z
    .param p8, "rescanning"    # Z

    .prologue
    .line 147
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scanBuffer buffer="

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    invoke-direct/range {p0 .. p8}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanBuffer([CIIIIIZZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanEnd()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaScanSessionEnd()I

    .line 165
    sget-object v0, Lcom/nuance/dlm/ACAlphaInput;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scanEnd"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
