.class public abstract Lcom/nuance/swype/input/settings/LanguagePrefs;
.super Ljava/lang/Object;
.source "LanguagePrefs.java"


# static fields
.field protected static final LANGUAGE_ID_KEY:Ljava/lang/String; = "language_id"


# instance fields
.field private final context:Landroid/content/Context;

.field private final languageId:Ljava/lang/String;

.field private final savePortratInputPanel:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final screen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/nuance/swype/input/settings/LanguagePrefs$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguagePrefs$1;-><init>(Lcom/nuance/swype/input/settings/LanguagePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->savePortratInputPanel:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 45
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 47
    const-string/jumbo v0, "language_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->languageId:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->languageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_31
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguagePrefs;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguagePrefs;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    return-object v0
.end method

.method private addJapaneseHandWritingSettings(Landroid/preference/PreferenceCategory;)V
    .registers 5
    .param p1, "cat"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 105
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/LanguagePrefs;->createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;

    move-result-object v1

    .line 106
    .local v1, "pref":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 107
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    return-void
.end method

.method private addPortraitLayoutSettings(Landroid/preference/PreferenceCategory;)V
    .registers 7
    .param p1, "cat"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 116
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 119
    .local v0, "currentInputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 120
    iget-object v3, v0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 122
    .local v1, "defaultInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-direct {p0, p1, v3, v4}, Lcom/nuance/swype/input/settings/LanguagePrefs;->createListPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/ListPreference;

    move-result-object v2

    .line 124
    .local v2, "list":Landroid/preference/ListPreference;
    sget v3, Lcom/nuance/swype/input/R$string;->portrait_input_panel:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 125
    sget v3, Lcom/nuance/swype/input/R$string;->portrait_input_panel_summary:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 126
    sget v3, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogIcon(I)V

    .line 127
    sget v3, Lcom/nuance/swype/input/R$string;->portrait_input_panel:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 128
    sget v3, Lcom/nuance/swype/input/R$array;->entries_japanese_keyboard_portrait_options:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 129
    sget v3, Lcom/nuance/swype/input/R$array;->entryValues_japanese_keyboard_portrait_options:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 130
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    .end local v1    # "defaultInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v2    # "list":Landroid/preference/ListPreference;
    :cond_4f
    return-void
.end method

.method public static createArgs(Lcom/nuance/swype/input/InputMethods$Language;)Landroid/os/Bundle;
    .registers 4
    .param p0, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "language_id"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method private createListPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/ListPreference;
    .registers 6
    .param p1, "cat"    # Landroid/preference/PreferenceCategory;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 139
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_1d

    .line 140
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0    # "list":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v0    # "list":Landroid/preference/ListPreference;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->savePortratInputPanel:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_1d
    return-object v0
.end method


# virtual methods
.method public buildLanguagesScreen()V
    .registers 13

    .prologue
    .line 55
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    .line 57
    iget-object v8, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->languageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 58
    .local v4, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v4, :cond_23

    .line 59
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Can\'t find %s in available input languages"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->languageId:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_23
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 64
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    .line 66
    .local v6, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 67
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getKoreanInputModes()Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    if-eqz v3, :cond_c0

    .line 72
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 73
    .local v1, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5e
    :goto_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 75
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 78
    :cond_76
    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/LanguagePrefs;->createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;

    move-result-object v5

    .line 79
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 82
    sget v8, Lcom/nuance/swype/input/R$string;->current_use_input_mode:I

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 84
    :cond_97
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5e

    .line 87
    .end local v0    # "cat":Landroid/preference/PreferenceCategory;
    .end local v1    # "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v3    # "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_9b
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 88
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 89
    .restart local v0    # "cat":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguagePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 91
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/LanguagePrefs;->addPortraitLayoutSettings(Landroid/preference/PreferenceCategory;)V

    .line 93
    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 94
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/LanguagePrefs;->addJapaneseHandWritingSettings(Landroid/preference/PreferenceCategory;)V

    .line 97
    .end local v0    # "cat":Landroid/preference/PreferenceCategory;
    :cond_c0
    return-void
.end method

.method protected abstract createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
.end method
