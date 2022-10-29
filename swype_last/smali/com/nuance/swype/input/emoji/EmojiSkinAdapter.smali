.class public Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmojiSkinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;,
        Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private parent:Landroid/view/View;

.field private skinToneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private skinTonePosition:I

.field private skinToneValue:I

.field private textSizeUnscaled:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "EmojiSkinAdapter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "skinToneList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneList:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->emoji_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->textSizeUnscaled:F

    .line 36
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->parent:Landroid/view/View;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->parent:Landroid/view/View;

    return-object v0
.end method

.method private setSkinTonePosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinTonePosition:I

    .line 40
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSkinTonePosition()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinTonePosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 18
    check-cast p1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->onBindViewHolder(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "viewHolder"    # Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x1

    .line 55
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "createCells()"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "called : default value=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 59
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v1

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneValue:I

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v2

    if-ne v1, v2, :cond_47

    .line 60
    iget-object v1, p1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 61
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->setSkinTonePosition(I)V

    .line 63
    :cond_47
    if-eqz v0, :cond_52

    .line 64
    iget-object v1, p1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->setSkinToneValue(Lcom/nuance/swype/input/emoji/SkinToneView;Ljava/lang/String;)V

    .line 66
    :cond_52
    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;-><init>(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;)V

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->setClickListener(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$layout;->emoji_skin_item:I

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    return-object v1
.end method

.method public setDefaultSkinTone(I)V
    .registers 2
    .param p1, "skinToneValue"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->skinToneValue:I

    .line 88
    return-void
.end method

.method public setSkinToneValue(Lcom/nuance/swype/input/emoji/SkinToneView;Ljava/lang/String;)V
    .registers 4
    .param p1, "drawView"    # Lcom/nuance/swype/input/emoji/SkinToneView;
    .param p2, "codePoint"    # Ljava/lang/String;

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->textSizeUnscaled:F

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/emoji/SkinToneView;->setPaintTextSize(F)V

    .line 79
    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/emoji/SkinToneView;->setTextValue(Ljava/lang/String;)V

    .line 80
    return-void
.end method
