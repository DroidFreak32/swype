.class public Lcom/nuance/swype/input/settings/ConnectAccountDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "ConnectAccountDispatch.java"


# static fields
.field public static final DISPLAY_ACTIVATION_CODE:Ljava/lang/String; = "DISPLAY_ACTIVATION_CODE"

.field public static final PASS_ACTIVATION_CODE_KEY:Ljava/lang/String; = "PASS_ACTIVATION_CODE_KEY"

.field public static final PASS_ACTIVATION_CODE_VALUE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, "data":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 26
    .local v2, "getValue":I
    if-eqz v0, :cond_0

    .line 27
    const-string v4, "PASS_ACTIVATION_CODE_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 29
    :cond_0
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 32
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 35
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 38
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x64

    if-ne v2, v4, :cond_2

    .line 39
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 40
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setActivationCodePopupShown(Z)V

    .line 42
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 44
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->finish()V

    .line 45
    return-void
.end method

.method protected processAccountLinkRequest(Ljava/lang/String;)V
    .locals 10
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 82
    if-eqz p1, :cond_2

    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "email="

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "code="

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    const-string v7, "email="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 85
    .local v6, "positionEmail":I
    const-string v7, "code="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "positionCode":I
    move-object v4, p1

    .line 87
    .local v4, "modifiedLink":Ljava/lang/String;
    if-le v5, v6, :cond_3

    .line 91
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 93
    add-int/lit8 v7, v6, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "email":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "&"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    const-string v7, "&"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    const-string v7, "&"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_2

    .line 114
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    :goto_1
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    .line 118
    .local v2, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 119
    .local v0, "a":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->verifyAccount(Ljava/lang/String;)Z

    .line 125
    .end local v0    # "a":Lcom/nuance/swypeconnect/ac/ACAccount;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "connect":Lcom/nuance/swype/connect/Connect;
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "modifiedLink":Ljava/lang/String;
    .end local v5    # "positionCode":I
    .end local v6    # "positionEmail":I
    :cond_2
    return-void

    .line 96
    .restart local v4    # "modifiedLink":Ljava/lang/String;
    .restart local v5    # "positionCode":I
    .restart local v6    # "positionEmail":I
    :cond_3
    add-int/lit8 v7, v6, 0x6

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3    # "email":Ljava/lang/String;
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 98
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "code":Ljava/lang/String;
    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->startActivity(Landroid/content/Intent;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 62
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsDispatch;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 75
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_0
    return-void
.end method
