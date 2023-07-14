.class Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;
.super Ljava/lang/Object;
.source "EmojiSkinToneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/EmojiSkinToneListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field private final rd_skin_btn:Landroid/widget/RadioButton;

.field private final tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/SkinToneView;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "tv_skin_name"    # Lcom/nuance/swype/input/emoji/SkinToneView;
    .param p2, "rd_skin_btn"    # Landroid/widget/RadioButton;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;

    .line 94
    iput-object p2, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->rd_skin_btn:Landroid/widget/RadioButton;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Lcom/nuance/swype/input/emoji/SkinToneView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->tv_skin_name:Lcom/nuance/swype/input/emoji/SkinToneView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->rd_skin_btn:Landroid/widget/RadioButton;

    return-object v0
.end method
