.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;
.super Ljava/lang/Object;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1227
    packed-switch v0, :pswitch_data_16

    .line 1239
    :goto_8
    return v2

    .line 1230
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1202(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Z)Z

    goto :goto_8

    .line 1234
    :pswitch_10
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1202(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Z)Z

    goto :goto_8

    .line 1227
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method
