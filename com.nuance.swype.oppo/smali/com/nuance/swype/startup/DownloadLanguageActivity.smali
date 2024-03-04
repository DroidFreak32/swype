.class public Lcom/nuance/swype/startup/DownloadLanguageActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "DownloadLanguageActivity.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private cancelImage:Landroid/widget/ImageView;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

.field private downloadLanguageDisplayName:Ljava/lang/String;

.field private downloadLanguageId:I

.field private downloadTextView:Landroid/widget/TextView;

.field private downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "DownloadLanguageActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;-><init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/DownloadLanguageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;-><init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/DownloadLanguageActivity$5;

    invoke-direct {v2}, Lcom/nuance/swype/startup/DownloadLanguageActivity$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity$2;-><init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 79
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_dtc:I

    sget v3, Lcom/nuance/swype/input/R$layout;->startup_download_language:I

    const-string v4, ""

    invoke-virtual {p0, v0, v3, v4}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    sget v0, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceDownloadLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageDisplayName:Ljava/lang/String;

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceDownloadLanguageID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    iget v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v0

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->finish()V

    .line 80
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 82
    return-void

    :cond_1
    move v0, v2

    .line 79
    goto :goto_0

    :cond_2
    sget v0, Lcom/nuance/swype/input/R$id;->languageText:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nuance/swype/input/R$id;->cancelImage:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->cancelImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->cancelImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;-><init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iget v2, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->downloadLanguageId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 95
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onDestroy()V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onResume()V

    .line 101
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceSendDownloadingNotification(Z)V

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onStop()V

    .line 108
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceSendDownloadingNotification(Z)V

    .line 110
    return-void
.end method
