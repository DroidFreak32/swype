.class public abstract Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.super Ljava/lang/Object;
.source "ConnectionAwarePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/ConnectionAwarePreferences$FallbackWebViewClient;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final longClickConsumer:Landroid/view/View$OnLongClickListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ConnectionAwarePreference"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 150
    new-instance v0, Lcom/nuance/swype/preference/ConnectionAwarePreferences$3;

    invoke-direct {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$3;-><init>()V

    sput-object v0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->longClickConsumer:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getConnectDialog()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 40
    invoke-virtual {p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialogNoButtons(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_enable_data:I

    new-instance v2, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$1;-><init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public getConnectDialogNoButtons(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 60
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_cellular_failure:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 64
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_wifi_failure:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public getConnectPreference()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v1

    .line 77
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences$2;-><init>(Lcom/nuance/swype/preference/ConnectionAwarePreferences;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    return-object v1
.end method

.method public onConnectPreferenceClick()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->showConnectDialog()V

    .line 72
    return-void
.end method

.method public abstract showConnectDialog()V
.end method
