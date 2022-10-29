.class Lcom/nuance/swype/input/BackspaceRevertHandler$2;
.super Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    const-string/jumbo v0, "revertable"

    return-object v0
.end method

.method public onSendBackspace(I)Z
    .registers 11
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 192
    const/4 v2, 0x0

    .line 198
    .local v2, "reverted":Z
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 199
    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v8}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    move v1, v5

    .line 200
    .local v1, "isAutoCorrected":Z
    :goto_1e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onSendBackspace(): was auto corrected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; bs count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 202
    if-eqz v1, :cond_ba

    if-ne v5, p1, :cond_ba

    .line 204
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;
    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 205
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v0, :cond_ba

    .line 206
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 207
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "word":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;
    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v4, v5, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegionBeforeCursor(Ljava/lang/CharSequence;IZ)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_cb

    move v2, v5

    .line 210
    :goto_6e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onSendBackspace(): set composing region success: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 211
    if-eqz v2, :cond_ab

    .line 212
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;
    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v3

    .line 213
    .local v3, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v3, :cond_cd

    .line 214
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 215
    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 214
    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 223
    :goto_a0
    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;
    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->onExtractedTextClicked()V

    .line 225
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_ab
    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->inputView:Lcom/nuance/swype/input/AlphaInputView;
    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/AlphaInputView;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 231
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v4    # "word":Ljava/lang/String;
    :cond_ba
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v2, :cond_db

    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateReverted:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v5

    :goto_c4
    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v6, v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 232
    return v2

    .end local v1    # "isAutoCorrected":Z
    :cond_c8
    move v1, v6

    .line 198
    goto/16 :goto_1e

    .restart local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v1    # "isAutoCorrected":Z
    .restart local v4    # "word":Ljava/lang/String;
    :cond_cb
    move v2, v6

    .line 209
    goto :goto_6e

    .line 218
    .restart local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_cd
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_a0

    .line 231
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    .end local v4    # "word":Ljava/lang/String;
    :cond_db
    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v5

    goto :goto_c4
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 237
    if-nez p1, :cond_14

    .line 238
    const-string/jumbo v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 248
    :cond_13
    :goto_13
    return-void

    .line 244
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSetSuggestions(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_13
.end method
