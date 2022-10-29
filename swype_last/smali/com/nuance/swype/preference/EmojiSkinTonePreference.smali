.class public Lcom/nuance/swype/preference/EmojiSkinTonePreference;
.super Landroid/preference/Preference;
.source "EmojiSkinTonePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private emoji_scale:I

.field private focusable:Z

.field private mContext:Landroid/content/Context;

.field public mCurrentView:Landroid/view/View;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field public mViewClickPreferenceListener:Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;

.field private setFocus:Z

.field private tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string/jumbo v0, "EmojiSkinTonePreference"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setFocus:Z

    .line 28
    iput-boolean v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->focusable:Z

    .line 33
    const/16 v0, 0x14

    iput v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->emoji_scale:I

    .line 38
    sget v0, Lcom/nuance/swype/input/R$layout;->emoji_skin_tone_pref:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setWidgetLayoutResource(I)V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 46
    sget v0, Lcom/nuance/swype/input/R$id;->emoji_skin_tone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/SkinToneView;

    iput-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    .line 47
    invoke-virtual {p0}, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->getEmojiSkinToneCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setEmojiText(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_23

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_23
    iget-boolean v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setFocus:Z

    if-eqz v0, :cond_32

    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->focusable:Z

    .line 1095
    iget-object v1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 1096
    iget-object v1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 57
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_41

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 60
    :cond_41
    return-void

    .line 1099
    :cond_42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->setFocus:Z

    .line 1100
    iput-boolean v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->focusable:Z

    goto :goto_32
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;

    invoke-interface {v0, p0}, Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;->onViewClick(Landroid/preference/Preference;)V

    .line 92
    :cond_9
    return-void
.end method

.method public final setEmojiText(Ljava/lang/String;)V
    .registers 7
    .param p1, "emojiSkinToneCode"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setEmojiText()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called >>>>> emojiSkinToneCode ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    if-eqz v0, :cond_5b

    .line 2070
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2071
    iget v1, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->emoji_scale:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/util/Util;->convertDpToPixel(F)F

    move-result v1

    .line 2072
    sget v2, Lcom/nuance/swype/input/R$dimen;->skin_tone_xpos_in_preference:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 2073
    sget v3, Lcom/nuance/swype/input/R$dimen;->skin_tone_ypos_in_preference:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 2074
    sget v4, Lcom/nuance/swype/input/R$dimen;->skin_tone_height_in_preference:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2075
    iget-object v4, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    invoke-virtual {v4, v2, v3}, Lcom/nuance/swype/input/emoji/SkinToneView;->setPosition(II)V

    .line 2076
    iget-object v2, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/SkinToneView;->setHeight(I)V

    .line 2077
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/SkinToneView;->setPaintTextSize(F)V

    .line 2078
    iget-object v0, p0, Lcom/nuance/swype/preference/EmojiSkinTonePreference;->tv_emoji_skin_tone:Lcom/nuance/swype/input/emoji/SkinToneView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/SkinToneView;->setTextValue(Ljava/lang/String;)V

    .line 67
    :cond_5b
    return-void
.end method
