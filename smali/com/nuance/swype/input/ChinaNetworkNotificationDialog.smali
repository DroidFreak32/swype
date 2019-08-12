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
.field private static mCheckBox:Landroid/widget/CheckBox;

.field private static mHasBeenShown:Z


# instance fields
.field private mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static final create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;Z)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;
    .param p2, "useThemedInflater"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    new-instance v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "dlg":Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;
    iput-object p1, v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    .line 51
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 52
    .local v2, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 53
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 55
    new-instance v4, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$1;

    invoke-direct {v4}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$1;-><init>()V

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 64
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setIcon(I)V

    .line 65
    sget v4, Lcom/nuance/swype/input/R$string;->network_notification_title:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setTitle(I)V

    .line 67
    const/4 v4, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->continue_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p2, :cond_0

    .line 74
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    :cond_0
    sget v4, Lcom/nuance/swype/input/R$layout;->china_network_notification_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/nuance/swype/input/R$id;->not_ask_check_box:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 78
    sput-object v4, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$2;

    invoke-direct {v5}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$2;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setView(Landroid/view/View;)V

    .line 89
    return-object v0
.end method

.method public static hasBeenShown()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 95
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 96
    .local v0, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 99
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;->onNegativeButtonClick()Z

    .line 115
    .end local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move-object v1, p1

    .line 103
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 104
    .restart local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 106
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 107
    sget-object v1, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 109
    :cond_2
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->doDelayedStart()V

    .line 111
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;->onPositiveButtonClick()Z

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 126
    .local v0, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreementNotAsk(Z)V

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 130
    return-void
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->mHasBeenShown:Z

    .line 120
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 121
    return-void
.end method
