.class public Lcom/nuance/swype/startup/DownloadLanguageDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "DownloadLanguageDelegate.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final cancelListener:Landroid/view/View$OnClickListener;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

.field private downloadLanguageId:I

.field private downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "DownloadLanguageDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 125
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;-><init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->cancelListener:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate$3;-><init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectionLost()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    iget v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    return-object v0
.end method

.method private connectionLost()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1181
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1182
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1183
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1184
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;-><init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->showDialog(Landroid/app/Dialog;)V

    .line 123
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/DownloadLanguageDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;-><init>()V

    .line 36
    .local v0, "f":Lcom/nuance/swype/startup/DownloadLanguageDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onAttach(Landroid/app/Activity;)V

    .line 44
    new-instance v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$1;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate$1;-><init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_one_button:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_download_language:I

    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->setupPositiveButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceDownloadLanguageID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I

    .line 73
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    iput-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceDownloadLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "downloadLanguageDisplayName":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->view:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->languageText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume: downloadLanguageId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume: downloadLanguageStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 85
    sget-object v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate$5;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 102
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 104
    sget-object v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume: connected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectionLost()V

    .line 109
    :cond_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadingLanguage:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setLanguageSelectedAndInstalled$1385ff()V

    .line 97
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mFlags:I

    iget-object v3, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
