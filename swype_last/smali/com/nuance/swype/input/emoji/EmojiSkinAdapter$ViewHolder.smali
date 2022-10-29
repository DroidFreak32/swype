.class public Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EmojiSkinAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private clickListener:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

.field public itemView:Landroid/view/View;

.field public tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 99
    sget v0, Lcom/nuance/swype/input/R$id;->tv_skin_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/SkinToneView;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->clickListener:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    if-eqz v0, :cond_e

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->clickListener:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IZ)V

    .line 110
    :cond_e
    return-void
.end method

.method public setClickListener(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;)V
    .registers 2
    .param p1, "itemClickListener"    # Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;->clickListener:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    .line 104
    return-void
.end method
