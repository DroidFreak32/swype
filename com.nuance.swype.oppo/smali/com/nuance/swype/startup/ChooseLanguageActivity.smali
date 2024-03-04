.class public Lcom/nuance/swype/startup/ChooseLanguageActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "ChooseLanguageActivity.java"


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
.field private callback:Landroid/os/Handler$Callback;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

.field private displayTimeoutDialog:Z

.field private dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private isRunning:Z

.field private languageList:Landroid/widget/ListView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private weakHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "ChooseLanguageActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 85
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageActivity$2;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$2;-><init>()V

    sput-object v0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayLanguageCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$1;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->callback:Landroid/os/Handler$Callback;

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayTimeoutDialog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->isRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->showActiveLanguagesList()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z
    .locals 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/ChooseLanguageActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->timeoutDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$600()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
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
    .line 363
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-nez v7, :cond_0

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 366
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .local v0, "availableLanguageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v1, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 374
    .local v4, "inputLanguages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v7

    .line 375
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 376
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 378
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 379
    .local v5, "langId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 380
    .local v6, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v6, :cond_3

    .line 381
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    .end local v5    # "langId":Ljava/lang/Integer;
    .end local v6    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_4
    sget-object v7, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static removeDuplicate(Ljava/util/List;)V
    .locals 4
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 351
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 352
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private showActiveLanguagesList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, "displayLanguageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    .line 278
    .local v1, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    sget-object v7, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceInstalledLanguageLength(I)V

    .line 280
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, "installedLanguage":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    sget-object v7, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 283
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 284
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->removeDuplicate(Ljava/util/List;)V

    .line 287
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 290
    .local v6, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    .end local v6    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    invoke-static {v2}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->removeDuplicate(Ljava/util/List;)V

    .line 293
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iput-boolean v9, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayTimeoutDialog:Z

    .line 300
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v7, Lcom/nuance/swype/input/R$layout;->startup_language_list:I

    sget v8, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-direct {v0, p0, v7, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 302
    .local v0, "ad":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->languageList:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->languageList:Landroid/widget/ListView;

    new-instance v8, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;

    invoke-direct {v8, p0, v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    return-void

    .line 296
    .end local v0    # "ad":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayTimeoutDialog:Z

    .line 297
    iget-object v7, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->showSelectSwypeDialog()V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 101
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 104
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageActivity$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$3;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 122
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 124
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_dtc:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_choose_language:I

    sget v2, Lcom/nuance/swype/input/R$string;->startup_choose_lang:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->loadTemplateToContentView(III)V

    sget v0, Lcom/nuance/swype/input/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->languageList:Landroid/widget/ListView;

    sget v0, Lcom/nuance/swype/input/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/nuance/swype/startup/ChooseLanguageActivity$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$5;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 140
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 179
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method protected final onListUpdated()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    .line 144
    .local v0, "isListAvailable":Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->displayTimeoutDialog:Z

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    new-instance v1, Lcom/nuance/swype/startup/ChooseLanguageActivity$6;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$6;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->isRunning:Z

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->showActiveLanguagesList()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->isRunning:Z

    .line 82
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onStart()V

    .line 230
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onStop()V

    .line 235
    return-void
.end method

.method protected final showSelectSwypeDialog()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->startup_exit_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->license_exit:I

    new-instance v2, Lcom/nuance/swype/startup/ChooseLanguageActivity$7;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$7;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 209
    return-void
.end method

.method public final timeoutDialog()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity;->weakHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 241
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 242
    sget v1, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/ChooseLanguageActivity$8;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$8;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/ChooseLanguageActivity$9;-><init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    return-object v0
.end method
