.class public Lcom/nuance/swype/input/ToolTips;
.super Ljava/lang/Object;
.source "ToolTips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ToolTips$TipTrigger;
    }
.end annotation


# static fields
.field public static final AUTO_ACCEPT_KEY_PREFIX:Ljava/lang/String; = "AUTO_ACCEPT_TIP"

.field public static final AUTO_SPACE_KEY_PREFIX:Ljava/lang/String; = "AUTO_SPACE_TIP"

.field public static final CAPITALIZATION_GESTURING_KEY_PREFIX:Ljava/lang/String; = "CAPITALIZATION_GESTURING_TIP"

.field public static final DOUBLE_LETTERS_GESTURING_KEY_PREFIX:Ljava/lang/String; = "DOUBLE_LETTERS_GESTURING_TIP"

.field public static final MAX_TIP_COUNT:I = 0x6

.field public static final MAX_TIP_DISPLAY_COUNT:I = 0x3

.field public static final PUNCTUATION_GESTURING_KEY_PREFIX:Ljava/lang/String; = "PUNCTUATION_GESTURING_TIP"


# instance fields
.field private final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

.field private final settings:Lcom/nuance/swype/input/AppPreferences;

.field private final tipAutoAccept:Lcom/nuance/swype/input/ToolTips$TipTrigger;

.field private final tipAutoSpace:Lcom/nuance/swype/input/ToolTips$TipTrigger;

.field private final tipCapitalGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

.field private final tipDoubleLettersGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

.field private final tipPunctGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .registers 4
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/nuance/swype/input/ToolTips$TipTrigger;

    const-string/jumbo v1, "AUTO_ACCEPT_TIP"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ToolTips$TipTrigger;-><init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipAutoAccept:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    .line 36
    new-instance v0, Lcom/nuance/swype/input/ToolTips$TipTrigger;

    const-string/jumbo v1, "AUTO_SPACE_TIP"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ToolTips$TipTrigger;-><init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipAutoSpace:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    .line 39
    new-instance v0, Lcom/nuance/swype/input/ToolTips$TipTrigger;

    const-string/jumbo v1, "PUNCTUATION_GESTURING_TIP"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ToolTips$TipTrigger;-><init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipPunctGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    .line 42
    new-instance v0, Lcom/nuance/swype/input/ToolTips$TipTrigger;

    const-string/jumbo v1, "DOUBLE_LETTERS_GESTURING_TIP"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ToolTips$TipTrigger;-><init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipDoubleLettersGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    .line 45
    new-instance v0, Lcom/nuance/swype/input/ToolTips$TipTrigger;

    const-string/jumbo v1, "CAPITALIZATION_GESTURING_TIP"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ToolTips$TipTrigger;-><init>(Lcom/nuance/swype/input/ToolTips;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipCapitalGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    .line 57
    iput-object p1, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 58
    invoke-virtual {p1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    .line 59
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNoMatchTip()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4

    .prologue
    .line 118
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 119
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    sget v2, Lcom/nuance/swype/input/R$string;->tips_hwcl_no_match:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 120
    return-object v0
.end method

.method public createSwypeKeyTip()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 9

    .prologue
    .line 124
    sget v5, Lcom/nuance/swype/input/R$string;->tips_hwcl_swype_key:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "swypeKeyTip":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 126
    sget v5, Lcom/nuance/swype/input/R$string;->press_hod_swype_key_for_swype_store:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_12
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v0, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 129
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const-string/jumbo v5, "%%.*%%"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 130
    .local v2, "iconToken":Ljava/util/regex/Pattern;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 131
    invoke-static {v3, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "words":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_55

    .line 133
    aget-object v5, v4, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 134
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    aget-object v6, v4, v1

    invoke-direct {v5, v6}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 136
    :cond_42
    new-instance v5, Lcom/nuance/swype/input/DrawableCandidate;

    iget-object v6, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    sget v7, Lcom/nuance/swype/input/R$attr;->hwclSwypeKeyIcon:I

    .line 137
    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nuance/swype/input/DrawableCandidate;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {v0, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 140
    :cond_55
    array-length v5, v4

    if-lez v5, :cond_70

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 141
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-direct {v5, v6}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 144
    .end local v1    # "i":I
    .end local v4    # "words":[Ljava/lang/String;
    :cond_70
    return-object v0
.end method

.method public dimissTip()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SwypeDialog;->dismiss()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 67
    :cond_c
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 68
    return-void
.end method

.method protected getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    const-string/jumbo v1, "TOOL_TIPS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IMEApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setInt(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    const-string/jumbo v1, "TOOL_TIPS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 229
    return-void
.end method

.method protected showHtmlTip(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-nez v1, :cond_35

    .line 155
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    if-eqz v1, :cond_1c

    .line 156
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SwypeDialog;->dismiss()V

    .line 157
    iput-object v2, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 159
    :cond_1c
    new-instance v1, Lcom/nuance/swype/input/HtmlTipDialog;

    invoke-direct {v1, p2, v2, v2}, Lcom/nuance/swype/input/HtmlTipDialog;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v1, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/SwypeDialog;->createDialog(Landroid/content/Context;)V

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->mSwypeDialog:Lcom/nuance/swype/input/SwypeDialog;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/SwypeDialog;->show(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 164
    .end local v0    # "context":Landroid/content/Context;
    :cond_35
    return-void
.end method

.method protected showTip(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 151
    :cond_1c
    return-void
.end method

.method public triggerAutoAcceptTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipAutoAccept:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->trigger()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 72
    sget v0, Lcom/nuance/swype/input/R$string;->tips_default_word_select:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 74
    :cond_19
    return-void
.end method

.method public triggerAutoSpaceTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipAutoSpace:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->trigger()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    sget v0, Lcom/nuance/swype/input/R$string;->tips_autospace:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    :cond_19
    return-void
.end method

.method public triggerCaptitalizationGestureTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipCapitalGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->trigger()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 96
    sget v0, Lcom/nuance/swype/input/R$string;->tips_auto_caps:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 98
    :cond_19
    return-void
.end method

.method public triggerDoubleLettersGestureTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipDoubleLettersGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->trigger()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 90
    sget v0, Lcom/nuance/swype/input/R$string;->tips_double_letters:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 92
    :cond_19
    return-void
.end method

.method public triggerEditGestureTip(Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isShowEditGestureTip()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 111
    sget v1, Lcom/nuance/swype/input/R$string;->gesturetip_file:I

    .line 112
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/ToolTips;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 111
    invoke-static {v1, v2}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "gesturetipUrl":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showHtmlTip(Landroid/view/View;Ljava/lang/String;)V

    .line 115
    .end local v0    # "gesturetipUrl":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public triggerPasswordTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isPasswordTipAlreadyShown()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setPassWordTipShown()V

    .line 104
    sget v0, Lcom/nuance/swype/input/R$string;->tips_password:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 107
    :cond_1e
    return-void
.end method

.method public triggerPunctGestureTip(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/input/ToolTips;->tipPunctGesture:Lcom/nuance/swype/input/ToolTips$TipTrigger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ToolTips$TipTrigger;->trigger()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    sget v0, Lcom/nuance/swype/input/R$string;->tips_punctuation:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ToolTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/ToolTips;->showTip(Landroid/view/View;Ljava/lang/String;)V

    .line 86
    :cond_19
    return-void
.end method
