.class public Lcom/nuance/swype/input/UndoAcceptHandler;
.super Ljava/lang/Object;
.source "UndoAcceptHandler.java"


# instance fields
.field acceptedCandidate:Ljava/lang/String;

.field private final coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

.field wasDefaultOverride:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/UndoAcceptHandler;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .registers 2
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 34
    return-void
.end method


# virtual methods
.method public onAcceptCandidate(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "acceptedCandidate"    # Ljava/lang/String;
    .param p2, "exactCandidate"    # Ljava/lang/String;
    .param p3, "userExplicitPick"    # Z

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->acceptedCandidate:Ljava/lang/String;

    .line 45
    if-nez p3, :cond_1a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->wasDefaultOverride:Z

    .line 47
    return-void

    .line 46
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public undoAccept(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "recapture word must not empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_f
    iget-boolean v1, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->wasDefaultOverride:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->acceptedCandidate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 62
    .local v0, "wordArray":[C
    iget-object v1, p0, Lcom/nuance/swype/input/UndoAcceptHandler;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->undoAccept([CI)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    .line 64
    .end local v0    # "wordArray":[C
    :goto_26
    return-object v1

    :cond_27
    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    goto :goto_26
.end method
