.class public Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;
.super Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;
.source "CandidatesBuilderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;,
        Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper",
        "<",
        "Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_BUILD_SUGGESTION_CANDIDATE:I


# instance fields
.field private final coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;)V
    .registers 3
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "ownerInstance"    # Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 24
    return-void
.end method

.method private static obtainBuildParameter(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;
    .registers 3
    .param p0, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 56
    new-instance v0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public build(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .registers 3
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->build(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public build(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)V
    .registers 7
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->removeMessages(I)V

    .line 43
    invoke-static {p1, p2}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->obtainBuildParameter(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/Object;)Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->getOwnerInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

    .line 29
    .local v1, "callback":Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;
    if-eqz v1, :cond_1d

    .line 30
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1d

    .line 31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;

    .line 32
    .local v0, "buildParameter":Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v3, v0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;->source:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    iget-object v3, v0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;->parameter:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;->onBuildResult(Lcom/nuance/input/swypecorelib/Candidates;Ljava/lang/Object;)V

    .line 35
    .end local v0    # "buildParameter":Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$BuildParameter;
    :cond_1d
    return-void
.end method

.method public hasPendingBuild()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public removePendingBuild()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->removeMessages(I)V

    .line 52
    return-void
.end method
