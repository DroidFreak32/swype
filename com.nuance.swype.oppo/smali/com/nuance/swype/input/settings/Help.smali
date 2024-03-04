.class public abstract Lcom/nuance/swype/input/settings/Help;
.super Ljava/lang/Object;
.source "Help.java"


# static fields
.field public static final HELP_XML:I

.field private static final TIPS_KEY:Ljava/lang/String; = "show_tips"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/nuance/swype/input/R$xml;->help:I

    sput v0, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "help"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/Help;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Help;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Help;->rebuildSettings()V

    .line 35
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 6

    .prologue
    .line 44
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Help;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    .line 50
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Help;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 52
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 53
    .local v3, "versionPreference":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    const-string v5, "show_tips"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 59
    .local v2, "showTips":Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 60
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 61
    if-eqz v2, :cond_2

    .line 62
    new-instance v4, Lcom/nuance/swype/input/settings/Help$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/settings/Help$1;-><init>(Lcom/nuance/swype/input/settings/Help;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    :cond_2
    return-void
.end method
