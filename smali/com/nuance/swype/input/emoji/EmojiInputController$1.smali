.class Lcom/nuance/swype/input/emoji/EmojiInputController$1;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;->getViewPager(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)Landroid/support/v4/view/ViewPager;
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

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$000(Lcom/nuance/swype/input/emoji/EmojiInputController;I)V

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->setPageNumber(I)V

    .line 183
    return-void
.end method
