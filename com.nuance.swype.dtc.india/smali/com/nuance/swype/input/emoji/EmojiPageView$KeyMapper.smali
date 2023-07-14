.class Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;
.super Ljava/lang/Object;
.source "EmojiPageView.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyMapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiPageView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/EmojiPageView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;->this$0:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public map(FF)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;->this$0:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getCell(FF)Lcom/nuance/swype/input/emoji/EmojiGridCell;

    move-result-object v0

    return-object v0
.end method
