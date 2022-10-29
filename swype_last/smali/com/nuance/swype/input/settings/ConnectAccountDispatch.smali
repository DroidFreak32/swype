.class public Lcom/nuance/swype/input/settings/ConnectAccountDispatch;
.super Lcom/nuance/swype/input/settings/SettingsDispatch;
.source "ConnectAccountDispatch.java"


# static fields
.field public static final DISPLAY_ACTIVATION_CODE:Ljava/lang/String; = "DISPLAY_ACTIVATION_CODE"

.field public static final PASS_ACTIVATION_CODE_KEY:Ljava/lang/String; = "PASS_ACTIVATION_CODE_KEY"

.field public static final PASS_ACTIVATION_CODE_VALUE:I = 0x64

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string/jumbo v0, "ConnectAccountDispatch"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "data":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 29
    .local v2, "getValue":I
    if-eqz v0, :cond_15

    .line 30
    const-string/jumbo v4, "PASS_ACTIVATION_CODE_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    :cond_15
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_43

    .line 34
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 35
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_30

    .line 36
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 38
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 41
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_30
    const/16 v4, 0x64

    if-ne v2, v4, :cond_3c

    .line 42
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 43
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setActivationCodePopupShown(Z)V

    .line 45
    :cond_3c
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 47
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_43
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->finish()V

    .line 48
    return-void
.end method

.method protected processAccountLinkRequest(Ljava/lang/String;)V
    .registers 13
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 85
    if-eqz p1, :cond_b9

    const-string/jumbo v8, "?"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b9

    const-string/jumbo v8, "email="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b9

    const-string/jumbo v8, "code="

    .line 86
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 87
    const-string/jumbo v8, "email="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "positionEmail":I
    const-string/jumbo v8, "code="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 89
    .local v6, "positionCode":I
    move-object v5, p1

    .line 93
    .local v5, "modifiedLink":Ljava/lang/String;
    if-le v6, v7, :cond_ba

    .line 94
    add-int/lit8 v8, v6, 0x5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 96
    add-int/lit8 v8, v7, 0x6

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 96
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "email":Ljava/lang/String;
    :goto_45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5f

    const-string/jumbo v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 107
    const-string/jumbo v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_79

    const-string/jumbo v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 111
    const-string/jumbo v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_b9

    .line 117
    :try_start_8d
    const-string/jumbo v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_93
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_93} :catch_d2

    move-result-object v3

    .line 121
    :goto_94
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    .line 122
    .local v2, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 123
    .local v0, "a":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b9

    .line 124
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 125
    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->verifyAccount(Ljava/lang/String;)Z

    .line 129
    .end local v0    # "a":Lcom/nuance/swypeconnect/ac/ACAccount;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "connect":Lcom/nuance/swype/connect/Connect;
    .end local v3    # "email":Ljava/lang/String;
    .end local v5    # "modifiedLink":Ljava/lang/String;
    .end local v6    # "positionCode":I
    .end local v7    # "positionEmail":I
    :cond_b9
    return-void

    .line 99
    .restart local v5    # "modifiedLink":Ljava/lang/String;
    .restart local v6    # "positionCode":I
    .restart local v7    # "positionEmail":I
    :cond_ba
    add-int/lit8 v8, v7, 0x6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3    # "email":Ljava/lang/String;
    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 101
    add-int/lit8 v8, v6, 0x5

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 101
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "code":Ljava/lang/String;
    goto/16 :goto_45

    .line 118
    :catch_d2
    move-exception v4

    .line 119
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "UnsupportedEncodingException"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_94
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/SettingsDispatch;->startActivity(Landroid/content/Intent;)V

    .line 59
    if-eqz p1, :cond_14

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 62
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 65
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsDispatch;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_14

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 75
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ConnectAccountDispatch;->processAccountLinkRequest(Ljava/lang/String;)V

    .line 78
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_14
    return-void
.end method
