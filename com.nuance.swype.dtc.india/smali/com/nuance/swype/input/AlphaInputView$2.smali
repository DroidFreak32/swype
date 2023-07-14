.class Lcom/nuance/swype/input/AlphaInputView$2;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 4274
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldRemovePreviousAutoSpace(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    .line 4277
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 4278
    .local v0, "exactCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    .line 4279
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isCustomGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    const/16 v3, 0xb53

    if-ne v2, v3, :cond_1

    .line 4280
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .line 4281
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1600(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4282
    const/4 v1, 0x1

    .line 4284
    :cond_2
    return v1
.end method


# virtual methods
.method public onBuildResult(Lcom/nuance/input/swypecorelib/Candidates;Ljava/lang/Object;)V
    .locals 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 4290
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$2;->shouldRemovePreviousAutoSpace(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4291
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1700(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    .line 4292
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v4, v4, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;->onText(Ljava/lang/String;Lcom/nuance/swype/input/RecaptureHandler;)V

    .line 4295
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 4296
    .local v0, "exactCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4297
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isCustomGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4298
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    .line 4314
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 4315
    return-void

    .line 4301
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    .line 4302
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1500(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    goto :goto_0

    .line 4305
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_3

    .line 4306
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 4307
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_3

    .line 4308
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/nuance/swype/input/AlphaInputView;->access$1800(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 4311
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, p1, v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1900(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
