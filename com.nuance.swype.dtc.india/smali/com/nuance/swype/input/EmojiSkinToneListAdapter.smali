.class public Lcom/nuance/swype/input/EmojiSkinToneListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiSkinToneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final mContext:Landroid/content/Context;

.field private settingsPrefs:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final skinToneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field textSizeUnscaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "EmojiSkinToneListAdapter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/nuance/swype/input/settings/SettingsPrefs;)V
    .locals 2
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "settingsPrefs"    # Lcom/nuance/swype/input/settings/SettingsPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nuance/swype/input/settings/SettingsPrefs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "skinToneList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->skinToneList:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->settingsPrefs:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "r":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$dimen;->emoji_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->textSizeUnscaled:F

    .line 36
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/EmojiSkinToneListAdapter;)Lcom/nuance/swype/input/settings/SettingsPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/EmojiSkinToneListAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->settingsPrefs:Lcom/nuance/swype/input/settings/SettingsPrefs;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->skinToneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v5, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$layout;->emoji_skin_tone_item:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    sget v5, Lcom/nuance/swype/input/R$id;->tv_skin_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/SkinToneView;

    .line 59
    .local v3, "tv_skin_name":Lcom/nuance/swype/input/emoji/SkinToneView;
    sget v5, Lcom/nuance/swype/input/R$id;->rd_skin_btn:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 60
    .local v2, "rd_skin_btn":Landroid/widget/RadioButton;
    new-instance v5, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    invoke-direct {v5, v3, v2}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;-><init>(Lcom/nuance/swype/input/emoji/SkinToneView;Landroid/widget/RadioButton;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .end local v2    # "rd_skin_btn":Landroid/widget/RadioButton;
    .end local v3    # "tv_skin_name":Lcom/nuance/swype/input/emoji/SkinToneView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;

    .line 63
    .local v1, "holder":Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;
    iget-object v5, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->skinToneList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "codePoint":Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$000(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Lcom/nuance/swype/input/emoji/SkinToneView;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->setSkinToneValue(Lcom/nuance/swype/input/emoji/SkinToneView;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget-object v5, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 67
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getDefaultEmojiSkin()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v6

    iget-object v5, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->skinToneList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji;->getDefaultSkinToneColor()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 69
    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    :goto_0
    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;

    invoke-direct {v6, p0, v1, p1, v4}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$1;-><init>(Lcom/nuance/swype/input/EmojiSkinToneListAdapter;Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;ILcom/nuance/swype/input/UserPreferences;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object p2

    .line 71
    :cond_1
    invoke-static {v1}, Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;->access$100(Lcom/nuance/swype/input/EmojiSkinToneListAdapter$Holder;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSkinToneValue(Lcom/nuance/swype/input/emoji/SkinToneView;Ljava/lang/String;)V
    .locals 1
    .param p1, "drawView"    # Lcom/nuance/swype/input/emoji/SkinToneView;
    .param p2, "codePoint"    # Ljava/lang/String;

    .prologue
    .line 99
    iget v0, p0, Lcom/nuance/swype/input/EmojiSkinToneListAdapter;->textSizeUnscaled:F

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/emoji/SkinToneView;->setPaintTextSize(F)V

    .line 100
    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/emoji/SkinToneView;->setTextValue(Ljava/lang/String;)V

    .line 101
    return-void
.end method
