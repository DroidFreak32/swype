.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 141
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 149
    .local v1, "res":Landroid/content/res/Resources;
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->keyboard_forced_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 150
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 151
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
