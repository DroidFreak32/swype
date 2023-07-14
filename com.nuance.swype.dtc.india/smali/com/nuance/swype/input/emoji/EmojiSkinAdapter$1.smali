.class Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;
.super Ljava/lang/Object;
.source "EmojiSkinAdapter.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->onBindViewHolder(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "isLongClick"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->access$000(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->access$000(Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setSelectedSkinTone(I)V

    .line 73
    :cond_0
    return-void
.end method
