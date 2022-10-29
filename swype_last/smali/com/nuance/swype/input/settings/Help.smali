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
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/nuance/swype/input/R$xml;->help:I

    sput v0, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    .line 32
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->HELP:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/Help;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Help;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Help;->rebuildSettings()V

    .line 37
    return-void
.end method

.method protected final rebuildSettings()V
    .registers 7

    .prologue
    .line 46
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_9

    .line 47
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 50
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Help;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    .line 52
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Help;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 54
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 55
    .local v3, "versionPreference":Landroid/preference/Preference;
    if-eqz v3, :cond_29

    .line 56
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    :cond_29
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "show_tips"

    .line 60
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 61
    .local v2, "showTips":Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 63
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v2, :cond_4f

    .line 64
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    new-instance v4, Lcom/nuance/swype/input/settings/Help$1;

    invoke-direct {v4, p0, v0}, Lcom/nuance/swype/input/settings/Help$1;-><init>(Lcom/nuance/swype/input/settings/Help;Lcom/nuance/swype/input/AppPreferences;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    :cond_4f
    return-void
.end method
