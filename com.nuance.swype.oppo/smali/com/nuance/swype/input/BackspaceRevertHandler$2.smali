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
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "revertable"

    return-object v0
.end method

.method public onSendBackspace(I)Z
    .locals 9
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 194
    const/4 v2, 0x0

    .line 200
    .local v2, "reverted":Z
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v8}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 202
    .local v1, "isAutoCorrected":Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onSendBackspace(): was auto corrected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; bs count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 204
    if-eqz v1, :cond_1

    if-ne v5, p1, :cond_1

    .line 206
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 207
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 209
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "word":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v7}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$800(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v7

    invoke-virtual {v0, v7, v4, v5, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegionBeforeCursor(Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/String;IZ)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v2, v5

    .line 212
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onSendBackspace(): set composing region success: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 213
    if-eqz v2, :cond_0

    .line 214
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/InputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v3

    .line 215
    .local v3, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v3, :cond_4

    .line 216
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 225
    :goto_2
    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$700(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/InputView;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->onExtractedTextClicked()V

    .line 227
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 232
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v4    # "word":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$900(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v5

    :goto_3
    invoke-static {v6, v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 233
    return v2

    .end local v1    # "isAutoCorrected":Z
    :cond_2
    move v1, v6

    .line 200
    goto/16 :goto_0

    .restart local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v1    # "isAutoCorrected":Z
    .restart local v4    # "word":Ljava/lang/String;
    :cond_3
    move v2, v6

    .line 210
    goto :goto_1

    .line 220
    .restart local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 232
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    .end local v4    # "word":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v5}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v5

    goto :goto_3
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 239
    const-string v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetSuggestions(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->dlog(Ljava/lang/Object;)V

    .line 246
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

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$2;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_0
.end method
