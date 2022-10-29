.class public final Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;
.super Landroid/app/AlertDialog;
.source "ChinaNetworkNotificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;
    }
.end annotation


# static fields
.field private static final DIALOG_INTERVAL:I = 0x1f4

.field private static lastBeShownTimestamp:J

.field private static final lock:Ljava/lang/Object;

.field private static mCheckBox:Landroid/widget/CheckBox;


# instance fields
.field private isShowFromKeyboard:Z

.field private mHasBeenShown:Z

.field private mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lastBeShownTimestamp:J

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 21
    iput-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    .line 35
    return-void
.end method

.method public static final create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 46
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030133

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 47
    .local v5, "wrapperCtx":Landroid/content/Context;
    new-instance v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;

    invoke-direct {v1, v5}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "dlg":Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;
    iput-object p1, v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    .line 50
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 51
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 53
    .local v3, "prefs":Lcom/nuance/swype/input/UserPreferences;
    new-instance v6, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$1;

    invoke-direct {v6}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$1;-><init>()V

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 62
    sget v6, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setIcon(I)V

    .line 63
    sget v6, Lcom/nuance/swype/input/R$string;->network_notification_title:I

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setTitle(I)V

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/nuance/swype/input/R$string;->network_notification_message:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v6, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8, v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->continue_button:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8, v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 73
    sget v8, Lcom/nuance/swype/input/R$layout;->china_network_notification_dialog:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "view":Landroid/view/View;
    const/4 v2, 0x1

    .line 75
    .local v2, "isChecked":Z
    sget-object v6, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_8c

    .line 76
    sget-object v6, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 80
    :cond_6e
    :goto_6e
    sget v6, Lcom/nuance/swype/input/R$id;->not_ask_check_box:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 81
    sput-object v6, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    sget-object v6, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$2;

    invoke-direct {v8}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$2;-><init>()V

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    return-object v1

    .line 77
    :cond_8c
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getOnInstallFirstMessage()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 78
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowNetworkDialogFromKeyboard()Z

    move-result v6

    if-nez v6, :cond_9a

    const/4 v2, 0x1

    goto :goto_6e

    :cond_9a
    move v2, v7

    goto :goto_6e
.end method


# virtual methods
.method public final hasBeenShown()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    const/4 v1, -0x2

    if-ne p2, v1, :cond_47

    move-object v1, p1

    .line 99
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 100
    .local v0, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 101
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 103
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    if-eqz v1, :cond_2a

    .line 104
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_45

    move v1, v2

    :goto_27
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setShowNetworkDialogFromKeyboard(Z)V

    .line 107
    :cond_2a
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    if-eqz v1, :cond_33

    .line 108
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;->onNegativeButtonClick()Z

    .line 111
    :cond_33
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->stop()V

    .line 132
    .end local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_44
    :goto_44
    return-void

    .restart local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_45
    move v1, v3

    .line 104
    goto :goto_27

    .line 112
    .end local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_47
    const/4 v1, -0x1

    if-ne p2, v1, :cond_44

    move-object v1, p1

    .line 113
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 114
    .restart local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    if-eqz v1, :cond_65

    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_68

    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 115
    :cond_65
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 118
    :cond_68
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_8c

    .line 119
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 120
    iget-boolean v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    if-nez v1, :cond_81

    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 121
    :cond_81
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_b7

    :goto_89
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/UserPreferences;->setShowNetworkDialogFromKeyboard(Z)V

    .line 124
    :cond_8c
    iget-boolean v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    if-eqz v1, :cond_9c

    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 125
    :cond_9c
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->doDelayedStart()V

    .line 128
    :cond_ad
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    if-eqz v1, :cond_44

    .line 129
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;->onPositiveButtonClick()Z

    goto :goto_44

    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_b7
    move v2, v3

    .line 121
    goto :goto_89
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 176
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final onStop()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 151
    .local v0, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-nez v1, :cond_12

    .line 152
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 154
    :cond_12
    iput-boolean v2, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    .line 155
    iput-boolean v2, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lastBeShownTimestamp:J

    .line 157
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 158
    return-void
.end method

.method public final resetStatics()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    .line 166
    iput-boolean v0, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 167
    return-void
.end method

.method public final setShowFromKeyboard(Z)V
    .registers 2
    .param p1, "isFromKeyboard"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    .line 171
    return-void
.end method

.method public final show()V
    .registers 7

    .prologue
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "currentTimestamp":J
    sget-wide v2, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lastBeShownTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    sget-wide v2, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lastBeShownTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1b

    iget-boolean v2, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->isShowFromKeyboard:Z

    if-eqz v2, :cond_1b

    .line 146
    :goto_1a
    return-void

    .line 142
    :cond_1b
    sget-object v3, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 143
    const/4 v2, 0x1

    :try_start_1f
    iput-boolean v2, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 144
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    .line 145
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1a

    .line 144
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method
