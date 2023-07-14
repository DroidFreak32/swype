.class Lcom/nuance/swype/input/emoji/EmojiInputController$3;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;->initCategoryTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$3;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

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

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$3;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->playKeyFeedback(I)V

    .line 450
    :cond_0
    return v2
.end method
