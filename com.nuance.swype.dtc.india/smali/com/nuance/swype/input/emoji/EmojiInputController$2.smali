.class Lcom/nuance/swype/input/emoji/EmojiInputController$2;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;->createAdapter(Lcom/nuance/swype/input/emoji/EmojiGridParams;)V
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
    .line 318
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getActivePageView()Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v0

    .line 339
    .local v0, "pageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    if-eqz v0, :cond_0

    .line 340
    if-ne p1, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->onPageScrollStateChanged(Z)V

    .line 342
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getActivePageView()Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v0

    .line 330
    .local v0, "pageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/EmojiPageView;->onPageScrolled(IFI)V

    .line 333
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "pageNumber"    # I

    .prologue
    .line 322
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPageSelected(): "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onGlobalPageChanged()V

    .line 324
    return-void
.end method
