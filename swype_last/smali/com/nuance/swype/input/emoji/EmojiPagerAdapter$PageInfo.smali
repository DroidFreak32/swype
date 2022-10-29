.class Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
.super Ljava/lang/Object;
.source "EmojiPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageInfo"
.end annotation


# instance fields
.field public cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

.field public page:I


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/EmojiCategory;I)V
    .registers 3
    .param p1, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .param p2, "page"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 133
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->page:I

    .line 134
    return-void
.end method
