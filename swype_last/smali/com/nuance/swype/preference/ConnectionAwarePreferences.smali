.class public abstract Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.super Ljava/lang/Object;
.source "ConnectionAwarePreferences.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->onConnectPreferenceClick()V

    return-void
.end method

.method private onConnectPreferenceClick()V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->showConnectDialog()V

    .line 59
    return-void
.end method


# virtual methods
.method public getConnectDialog()Landroid/app/AlertDialog$Builder;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030133

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 41
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 42
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 44
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_cellular_failure:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 54
    :goto_31
    return-object v0

    .line 46
    :cond_32
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_wifi_failure:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 47
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_enable_data:I

    new-instance v2, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;-><init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31
.end method

.method public getConnectPreference()Landroid/preference/Preference;
    .registers 5

    .prologue
    .line 64
    iget-object v2, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v1

    .line 66
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;-><init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    return-object v1
.end method

.method public abstract showConnectDialog()V
.end method
