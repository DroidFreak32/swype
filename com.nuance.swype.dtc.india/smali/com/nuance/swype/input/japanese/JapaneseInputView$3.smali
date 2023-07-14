.class Lcom/nuance/swype/input/japanese/JapaneseInputView$3;
.super Ljava/lang/Object;
.source "JapaneseInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 2715
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2716
    packed-switch v0, :pswitch_data_0

    .line 2728
    :goto_0
    return v2

    .line 2719
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1402(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    goto :goto_0

    .line 2723
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1402(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    goto :goto_0

    .line 2716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
