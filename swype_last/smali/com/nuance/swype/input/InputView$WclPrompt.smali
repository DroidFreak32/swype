.class public Lcom/nuance/swype/input/InputView$WclPrompt;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WclPrompt"
.end annotation


# instance fields
.field candidates:Lcom/nuance/input/swypecorelib/Candidates;

.field protected hasVisitedStore:Z

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/nuance/swype/input/InputView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/InputView;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/InputView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3142
    iput-object p1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3143
    iput-object p2, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->mContext:Landroid/content/Context;

    .line 3144
    return-void
.end method


# virtual methods
.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3232
    const/4 v0, 0x0

    return v0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3228
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3238
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3201
    return-void
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    return v0
.end method

.method public onPressMoveCandidate(FFF)V
    .registers 4
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 3210
    return-void
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    .line 3242
    const/4 v0, 0x0

    return v0
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3204
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollContentChanged()V
    .registers 1

    .prologue
    .line 3247
    return-void
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3186
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showPlayStore()V

    .line 3190
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 3188
    :cond_13
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showThemeStore()V

    goto :goto_11
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3223
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3214
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showPlayStore()V

    .line 3218
    :goto_11
    return-void

    .line 3216
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showThemeStore()V

    goto :goto_11
.end method

.method public setMessage(I)V
    .registers 7
    .param p1, "message"    # I

    .prologue
    .line 3147
    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3148
    .local v0, "prompt":Ljava/lang/String;
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3149
    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->addAttribute(I)V

    .line 3150
    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->addAttribute(I)V

    .line 3151
    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    new-instance v2, Lcom/nuance/swype/input/DrawableCandidate;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v3}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$attr;->hwclSwypeKeyIcon:I

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/DrawableCandidate;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 3152
    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    new-instance v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {v2, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 3153
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 3156
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3157
    const-string/jumbo v0, "alphaInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3158
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0, p0, v1, v2}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 3177
    :cond_23
    :goto_23
    return-void

    .line 3160
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showMessageOnWCL(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 3161
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWCLMessageSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    goto :goto_23

    .line 3165
    :cond_39
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserTapKey()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3168
    const-string/jumbo v0, "alphaInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3169
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    # invokes: Lcom/nuance/swype/input/InputView;->setCommonSuggestion(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    invoke-static {v0, p0, v1, v2}, Lcom/nuance/swype/input/InputView;->access$200(Lcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 3170
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->setWCLMessage(Z)V

    goto :goto_23

    .line 3172
    :cond_65
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView$WclPrompt;->candidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showMessageOnWCL(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 3173
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWCLMessageSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 3174
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$WclPrompt;->this$0:Lcom/nuance/swype/input/InputView;

    # getter for: Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->setWCLMessage(Z)V

    goto :goto_23
.end method

.method public wclMessageHandler(Landroid/os/Handler;I)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I

    .prologue
    .line 3180
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x46

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3181
    return-void
.end method
