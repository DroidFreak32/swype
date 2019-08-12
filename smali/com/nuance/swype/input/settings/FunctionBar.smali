.class public abstract Lcom/nuance/swype/input/settings/FunctionBar;
.super Ljava/lang/Object;
.source "FunctionBar.java"


# static fields
.field private static final ADDONDICTIONARIES_CATEGORY:Ljava/lang/String; = "addondictionaries"

.field private static final CHINESESETTINGS_CATEGORY:Ljava/lang/String; = "chinesesettings"

.field private static final EDITKEYBOARD_CATEGORY:Ljava/lang/String; = "edit_layer"

.field private static final FUNCTION_BAR_CATEGORY:Ljava/lang/String; = "functionitem_category"

.field private static final INPUTMODE_CATEGORY:Ljava/lang/String; = "inputmode"

.field private static final LANGUAGE_OPTION_CATEGORY:Ljava/lang/String; = "language_option"

.field private static final MAX_FUNCTION_ITEM:I = 0x4

.field private static final NUMBERKEYBOARD_CATEGORY:Ljava/lang/String; = "number_keyboard"

.field private static final QUICKTOGGLE_CATEGORY:Ljava/lang/String; = "quicktoggle"

.field private static final SETTINGS_CATEGORY:Ljava/lang/String; = "settings"

.field private static final THEMES_CATEGORY:Ljava/lang/String; = "themes"


# instance fields
.field protected final MAXCOUNT__DIALOG:I

.field private final activity:Landroid/app/Activity;

.field private final screen:Landroid/preference/PreferenceScreen;

.field private selectedCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/FunctionBar;->MAXCOUNT__DIALOG:I

    .line 40
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/FunctionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBar;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->getFunctionItemSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/FunctionBar;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private buildFunctionBarScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-object v3, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 54
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 55
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 56
    if-nez v3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 60
    .local v1, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v4, "addondictionaries"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 62
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isConnectEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 65
    iget-object v3, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v4, "functionitem_category"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->setFuctionItemClickEvent()V

    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->getFunctionItemSelectedCount()I

    goto :goto_0
.end method

.method private getFunctionItemSelectedCount()I
    .locals 11

    .prologue
    .line 290
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 291
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "settings"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 292
    .local v7, "settings":Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 295
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "language_option"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 296
    .local v4, "languageOption":Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 297
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 299
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "inputmode"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 300
    .local v3, "inputMode":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 301
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 303
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 304
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "quicktoggle"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 305
    .local v6, "quickToggle":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 306
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 309
    .end local v6    # "quickToggle":Landroid/preference/CheckBoxPreference;
    :cond_3
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "edit_layer"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 310
    .local v2, "editKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 311
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 313
    :cond_4
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "number_keyboard"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 314
    .local v5, "numberKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 315
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 317
    :cond_5
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "themes"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 318
    .local v8, "themes":Landroid/preference/CheckBoxPreference;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 319
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 321
    :cond_6
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "addondictionaries"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 322
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 323
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 325
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "chinesesettings"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 326
    .local v1, "chineseSettings":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 327
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    .line 329
    :cond_8
    iget v9, p0, Lcom/nuance/swype/input/settings/FunctionBar;->selectedCount:I

    return v9
.end method

.method private setFuctionItemClickEvent()V
    .locals 12

    .prologue
    .line 74
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "settings"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 76
    .local v8, "settings":Landroid/preference/CheckBoxPreference;
    if-eqz v8, :cond_0

    .line 77
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$1;

    invoke-direct {v10, p0, v8}, Lcom/nuance/swype/input/settings/FunctionBar$1;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    :cond_0
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "language_option"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 99
    .local v5, "languageOption":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1

    .line 100
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$2;

    invoke-direct {v10, p0, v5}, Lcom/nuance/swype/input/settings/FunctionBar$2;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    :cond_1
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "inputmode"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 122
    .local v4, "inputMode":Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_2

    .line 123
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$3;

    invoke-direct {v10, p0, v4}, Lcom/nuance/swype/input/settings/FunctionBar$3;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    :cond_2
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "quicktoggle"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 145
    .local v7, "qucikToggle":Landroid/preference/CheckBoxPreference;
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 147
    if-eqz v7, :cond_3

    .line 148
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$4;

    invoke-direct {v10, p0, v7}, Lcom/nuance/swype/input/settings/FunctionBar$4;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    :cond_3
    :goto_0
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "number_keyboard"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 175
    .local v6, "numberKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_4

    .line 176
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$5;

    invoke-direct {v10, p0, v6}, Lcom/nuance/swype/input/settings/FunctionBar$5;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    :cond_4
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "edit_layer"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 198
    .local v3, "editKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 199
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$6;

    invoke-direct {v10, p0, v3}, Lcom/nuance/swype/input/settings/FunctionBar$6;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    :cond_5
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "themes"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 221
    .local v9, "themes":Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_6

    .line 222
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$7;

    invoke-direct {v10, p0, v9}, Lcom/nuance/swype/input/settings/FunctionBar$7;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 242
    :cond_6
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "addondictionaries"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 244
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_7

    .line 245
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$8;

    invoke-direct {v10, p0, v0}, Lcom/nuance/swype/input/settings/FunctionBar$8;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 265
    :cond_7
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "chinesesettings"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 267
    .local v2, "chineseSettings":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_8

    .line 268
    new-instance v10, Lcom/nuance/swype/input/settings/FunctionBar$9;

    invoke-direct {v10, p0, v2}, Lcom/nuance/swype/input/settings/FunctionBar$9;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 287
    :cond_8
    return-void

    .line 167
    .end local v0    # "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    .end local v2    # "chineseSettings":Landroid/preference/CheckBoxPreference;
    .end local v3    # "editKeyboard":Landroid/preference/CheckBoxPreference;
    .end local v6    # "numberKeyboard":Landroid/preference/CheckBoxPreference;
    .end local v9    # "themes":Landroid/preference/CheckBoxPreference;
    :cond_9
    iget-object v10, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string v11, "functionitem_category"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 168
    .local v1, "category":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_3

    if-eqz v7, :cond_3

    .line 169
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public createMaxItemDlg()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 333
    iget-object v1, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_content:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "max_content_msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/FunctionBar$10;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/FunctionBar$10;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->buildFunctionBarScreen()V

    .line 50
    return-void
.end method

.method protected abstract showMaxCountdialog()V
.end method
