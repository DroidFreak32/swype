.class Lcom/nuance/swype/input/emoji/EmojiViewPager$1;
.super Ljava/lang/Object;
.source "EmojiViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiViewPager;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiViewPager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->access$000(Lcom/nuance/swype/input/emoji/EmojiViewPager;)Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;->onPagerSizeChanged()V

    .line 54
    return-void
.end method
