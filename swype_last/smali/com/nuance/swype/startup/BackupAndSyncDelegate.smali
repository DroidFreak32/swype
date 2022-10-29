.class public Lcom/nuance/swype/startup/BackupAndSyncDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "BackupAndSyncDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private cnNwDialog:Landroid/app/Dialog;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private connectionDialog:Landroid/app/Dialog;

.field protected invalidEmailDialog:Landroid/app/Dialog;

.field private mAccountListShown:Z

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final registerButtonListener:Landroid/view/View$OnClickListener;

.field private final skipButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string/jumbo v0, "BackupAndSyncDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mAccountListShown:Z

    .line 211
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$5;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->registerButtonListener:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$6;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->skipButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    .line 3229
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->register(Landroid/content/Context;)Z

    move-result v0

    .line 3230
    if-eqz v0, :cond_1d

    .line 3231
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowBackupSync(Z)V

    .line 3232
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 39
    :cond_1d
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mAccountListShown:Z

    return v0
.end method

.method static synthetic access$102$7e8f9767(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mAccountListShown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->cnNwDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/BackupAndSyncDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;-><init>()V

    .line 60
    .local v0, "f":Lcom/nuance/swype/startup/BackupAndSyncDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    if-nez p1, :cond_3d

    .line 168
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3e

    .line 169
    const-string/jumbo v1, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 171
    .local v0, "credential":Lcom/google/android/gms/auth/api/credentials/Credential;
    sget-object v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActivityResult: credential = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    iget-object v4, v0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->view:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzbgg:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .end local v0    # "credential":Lcom/google/android/gms/auth/api/credentials/Credential;
    :cond_3d
    :goto_3d
    return-void

    .line 177
    :cond_3e
    if-nez p2, :cond_4d

    .line 178
    sget-object v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onActivityResult: user canceled"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_3d

    .line 181
    :cond_4d
    sget-object v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult: unknown result code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 68
    if-eqz p1, :cond_f

    .line 69
    const-string/jumbo v0, "account_list_shown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mAccountListShown:Z

    .line 71
    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncDelegate$1;

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$1;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;Landroid/content/Context;)V

    .line 84
    .local v0, "connection":Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 85
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mCredentialsApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 88
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v5, 0x1030132

    invoke-direct {v4, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->invalid_email_title:I

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->invalid_email_description:I

    .line 89
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->ok_button:I

    const/4 v4, 0x0

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->invalidEmailDialog:Landroid/app/Dialog;

    .line 93
    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectionDialog:Landroid/app/Dialog;

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowNetworkAgreementDialog()Z

    move-result v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lcom/nuance/swype/startup/BackupAndSyncDelegate$2;

    invoke-direct {v3, p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$2;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    invoke-static {v2, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->cnNwDialog:Landroid/app/Dialog;

    .line 113
    :cond_81
    sget v2, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v3, Lcom/nuance/swype/input/R$layout;->startup_backup_sync:I

    sget v4, Lcom/nuance/swype/input/R$string;->back_and_sync_title:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 116
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->setUpNegativeButton()V

    .line 117
    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->register_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->registerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->view:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 122
    .local v1, "editText":Landroid/widget/EditText;
    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    new-instance v2, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$3;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 273
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onDestroy()V

    .line 274
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 275
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 208
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 190
    new-instance v1, Lcom/nuance/swype/startup/BackupAndSyncDelegate$4;

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncDelegate$4;-><init>(Lcom/nuance/swype/startup/BackupAndSyncDelegate;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 191
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 193
    :cond_1f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    const-string/jumbo v0, "account_list_shown"

    iget-boolean v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mAccountListShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method protected register(Landroid/content/Context;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->view:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 247
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/Connect$Accounts;->isValidEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->invalidEmailDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->showDialog(Landroid/app/Dialog;)V

    move v3, v4

    .line 267
    :goto_38
    return v3

    .line 254
    :cond_39
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v2

    .line 255
    .local v2, "tosAccepted":Z
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInAccepted()Z

    move-result v1

    .line 257
    .local v1, "optInAccepted":Z
    if-eqz v2, :cond_49

    if-nez v1, :cond_75

    .line 258
    :cond_49
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowBackupSync(Z)V

    .line 259
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowCud(Z)V

    .line 260
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 2620
    iput-boolean v6, v3, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 261
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v5, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mFlags:I

    iget-object v6, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v3, v5, v6}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 262
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceAccountEmail(Ljava/lang/String;)V

    move v3, v4

    .line 263
    goto :goto_38

    .line 266
    :cond_75
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setHotWordsStatus$1385ff()V

    .line 267
    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    .line 268
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/service/impl/AccountUtil;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iget-object v3, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/service/impl/AccountUtil;->buildDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v4, v0, v5, v3, v6}, Lcom/nuance/swype/connect/Connect$Accounts;->createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v3

    goto :goto_38
.end method

.method protected setUpNegativeButton()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->skip_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->skipButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncDelegate;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_1f
    return-void
.end method
