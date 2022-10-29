.class public Lcom/nuance/swype/connect/LanguageUpdateWithTOS;
.super Landroid/app/Activity;
.source "LanguageUpdateWithTOS.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# static fields
.field public static final LANGUAGE_ID:Ljava/lang/String; = "language.id"

.field private static final REQUEST_FOR_RESULT_OK:I = 0x1


# instance fields
.field private log:Lcom/nuance/swype/util/LogManager$Log;

.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string/jumbo v0, "LanguageUpdateWithTOS"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method private doDownloadLanguage(Lcom/nuance/swype/connect/Connect;)V
    .registers 8
    .param p1, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "language.id"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "languageId":I
    iget-object v2, p0, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "doDownloadLanguage: "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 63
    if-eqz v0, :cond_34

    .line 64
    invoke-virtual {p1}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nuance/swype/input/settings/LanguageUpdateDispatch;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "languageUpdate":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v1    # "languageUpdate":Landroid/content/Intent;
    :goto_33
    return-void

    .line 69
    :cond_34
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getLog()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "NO LANGUAGE FOUND!"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_33
.end method


# virtual methods
.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 91
    invoke-static {p0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v2, 0x1

    if-ne p1, v2, :cond_34

    if-eqz p3, :cond_34

    .line 76
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    .line 77
    .local v0, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 78
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 79
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 80
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 88
    .end local v0    # "connect":Lcom/nuance/swype/connect/Connect;
    .end local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :goto_26
    return-void

    .line 82
    .restart local v0    # "connect":Lcom/nuance/swype/connect/Connect;
    .restart local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_27
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 83
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->doDownloadLanguage(Lcom/nuance/swype/connect/Connect;)V

    .line 87
    .end local v0    # "connect":Lcom/nuance/swype/connect/Connect;
    .end local v1    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_34
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->finish()V

    goto :goto_26
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p1, p0, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->mBundle:Landroid/os/Bundle;

    .line 30
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    .line 31
    .local v0, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 32
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 33
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 34
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 56
    :cond_28
    :goto_28
    return-void

    .line 37
    :cond_29
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v3

    if-nez v3, :cond_47

    .line 39
    invoke-static {p0, v5, v6, p1}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_28

    .line 42
    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_47
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 47
    :cond_5b
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->doDownloadLanguage(Lcom/nuance/swype/connect/Connect;)V

    .line 48
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->finish()V

    goto :goto_28

    .line 50
    :cond_62
    invoke-static {p0, v5, v6, p1}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 51
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_28

    .line 53
    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28
.end method

.method public onNegativeButtonClick()Z
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->finish()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onPositiveButtonClick()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    .line 103
    .local v0, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 104
    :cond_19
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->doDownloadLanguage(Lcom/nuance/swype/connect/Connect;)V

    .line 105
    invoke-virtual {p0}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->finish()V

    .line 113
    :cond_1f
    :goto_1f
    return v4

    .line 107
    :cond_20
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->mBundle:Landroid/os/Bundle;

    invoke-static {p0, v4, v2, v3}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1f

    .line 110
    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1f
.end method
