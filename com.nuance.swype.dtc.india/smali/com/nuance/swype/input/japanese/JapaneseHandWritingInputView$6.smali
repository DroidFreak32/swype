.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "JapaneseHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 1272
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 1265
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1266
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method
