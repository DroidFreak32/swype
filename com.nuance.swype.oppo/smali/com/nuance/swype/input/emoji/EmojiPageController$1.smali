.class Lcom/nuance/swype/input/emoji/EmojiPageController$1;
.super Ljava/lang/Object;
.source "EmojiPageController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiPageController;->getPage(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiPageController;

.field final synthetic val$pageView:Lcom/nuance/swype/input/emoji/EmojiPageView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiPageController;Lcom/nuance/swype/input/emoji/EmojiPageView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiPageController;

    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController$1;->val$pageView:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 80
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController$1;->val$pageView:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getItemAtPosition(FF)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "keyText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiPageController;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiPageController;->access$000(Lcom/nuance/swype/input/emoji/EmojiPageController;)Lcom/nuance/swype/input/emoji/RecentListManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/emoji/RecentListManager;->add(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiPageController;

    iget-object v2, v2, Lcom/nuance/swype/input/emoji/EmojiPageController;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 84
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/IME;->onText(Ljava/lang/CharSequence;J)V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
