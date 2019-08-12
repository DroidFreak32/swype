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

    .prologue
    .line 1247
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
    .line 1263
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 1264
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 1257
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1258
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method
