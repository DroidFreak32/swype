.class public Lcom/nuance/swype/startup/ChooseLanguageDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "ChooseLanguageDelegate.java"


# static fields
.field private static final displayLanguageCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final callback:Landroid/os/Handler$Callback;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private connectionLossAcknowledged:Z

.field private final dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

.field private dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private languageList:Landroid/widget/ListView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private weakHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "ChooseLanguageDelegate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 164
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$4;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$4;-><init>()V

    sput-object v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->displayLanguageCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectionLossAcknowledged:Z

    .line 54
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$1;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 70
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->callback:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    .line 1175
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/startup/ChooseLanguageDelegate$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$5;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->timeoutDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->showActiveLanguagesList()V

    return-void
.end method

.method static synthetic access$502$145c3a42(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectionLossAcknowledged:Z

    return v0
.end method

.method static synthetic access$600()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 38
    .line 1184
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->timeoutDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->showDialog(Landroid/app/Dialog;)V

    .line 1187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1189
    :cond_0
    const/4 v0, 0x1

    .line 38
    goto :goto_0
.end method

.method private getAvailableLanguages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-nez v6, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-object v1

    .line 333
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v0, "availableLanguageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 340
    .local v3, "inputLanguages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v6

    .line 341
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 344
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 345
    .local v4, "langId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 346
    .local v5, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v5, :cond_3

    .line 349
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 353
    .end local v4    # "langId":Ljava/lang/Integer;
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_4
    sget-object v6, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/ChooseLanguageDelegate;
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;-><init>()V

    .line 91
    .local v0, "f":Lcom/nuance/swype/startup/ChooseLanguageDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method private static removeDuplicate(Ljava/util/List;)V
    .locals 4
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 317
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 318
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private showActiveLanguagesList()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "displayLanguageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    sget-object v6, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v4

    .line 235
    .local v4, "installedLanguage":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 236
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->removeDuplicate(Ljava/util/List;)V

    .line 241
    sget-object v6, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showActiveLanguagesList() isLanguageListAvailable="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 242
    sget-object v6, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showActiveLanguagesList: connected: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 244
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->weakHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 249
    .local v5, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    invoke-static {v2}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->removeDuplicate(Ljava/util/List;)V

    .line 259
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->progressBar:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    :goto_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$layout;->startup_language_list:I

    sget v8, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-direct {v0, v6, v7, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 265
    .local v0, "ad":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->languageList:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->languageList:Landroid/widget/ListView;

    new-instance v7, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;

    invoke-direct {v7, p0, v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$8;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 313
    return-void

    .line 254
    .end local v0    # "ad":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_3
    iget-boolean v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectionLossAcknowledged:Z

    if-nez v6, :cond_2

    .line 255
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->weakHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method private timeoutDialog()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->weakHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 202
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$6;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$7;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onAttach(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 101
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$3;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate$3;-><init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    const-string/jumbo v0, "connection_loss_acknowledged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectionLossAcknowledged:Z

    .line 117
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->weakHandler:Landroid/os/Handler;

    .line 124
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_choose_language:I

    sget v2, Lcom/nuance/swype/input/R$string;->startup_choose_lang:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;III)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->languageList:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->progressBar:Landroid/widget/ProgressBar;

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->weakHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupDelegate;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->showActiveLanguagesList()V

    .line 139
    sget-object v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResume: isConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResume: isLanguageListAvailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 144
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v0, "connection_loss_acknowledged"

    iget-boolean v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectionLossAcknowledged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    return-void
.end method
