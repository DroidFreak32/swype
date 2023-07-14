.class Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;
.super Ljava/lang/Object;
.source "EmojiSkinToneListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

.field final synthetic val$holder:Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

.field final synthetic val$position:I

.field final synthetic val$userPrefs:Lcom/nuance/swype/input/UserPreferences;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/EmojiSkinToneListAdapter;Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;ILcom/nuance/swype/input/UserPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->this$0:Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    iput-object p2, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$holder:Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    iput p3, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$holder:Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->this$0:Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    iget-object v1, v1, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->skinToneList:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getDefaultSkinToneColor()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinToneFromCode(I)Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v0

    .line 81
    .local v0, "skinToneEnum":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->val$userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/UserPreferences;->setDefaultEmojiSkin(Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;)V

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;->this$0:Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->access$200(Lcom/nuance/swype/input/EmojiSkinToneListAdapter;)Lcom/nuance/swype/input/settings/SettingsPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setUserSelectEmojiSkinTone()V

    .line 83
    return-void
.end method
