.class public final Lcom/nuance/swype/input/settings/PersonalDictionary;
.super Ljava/lang/Object;
.source "PersonalDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;
    }
.end annotation


# static fields
.field private static final SELECTED_WORDS_STATE_KEY:Ljava/lang/String; = "selected_words"


# instance fields
.field private final context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/ImageButton;

.field private final listAdapter:Landroid/widget/BaseAdapter;

.field private final okClicked:Landroid/content/DialogInterface$OnClickListener;

.field private selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

.field private final selectedWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settingsChanged:Z

.field private final udbWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;Lcom/nuance/swype/input/settings/PersonalDictionary$1;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    .line 198
    new-instance v1, Lcom/nuance/swype/input/settings/PersonalDictionary$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/PersonalDictionary$2;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->okClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUserDictionary()V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    const-string/jumbo v1, "selected_words"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "selectedWordsArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    .end local v0    # "selectedWordsArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllWords()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->unselectAllWords()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteSelectedWords()V

    return-void
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/settings/PersonalDictionary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->settingsChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/PersonalDictionary;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/PersonalDictionary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/PersonalDictionary;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    return-object v0
.end method

.method private deleteSelectedWords()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->delete(Ljava/util/Set;)V

    .line 175
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUdbWords()V

    .line 176
    return-void
.end method

.method private notifyDataChange()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 180
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 181
    return-void
.end method

.method private recordMyWordsSettings()V
    .locals 8

    .prologue
    .line 250
    iget-object v6, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 251
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 257
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 258
    .local v0, "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-nez v0, :cond_0

    .line 259
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 269
    .local v4, "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    .line 272
    .local v3, "livingLanguageEnabled":Z
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v2

    .line 274
    .local v2, "askBeforeAdd":Z
    invoke-static {v4, v3, v2}, Lcom/nuance/swype/usagedata/UsageData;->recordMyWordsSettings(Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;ZZ)V

    .line 276
    return-void

    .line 260
    .end local v2    # "askBeforeAdd":Z
    .end local v3    # "livingLanguageEnabled":Z
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->isLinked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 261
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0

    .line 262
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0

    .line 265
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_2
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0
.end method

.method private selectAllWords()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "word":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0    # "word":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 166
    return-void
.end method

.method private selectUdbWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 154
    return-void
.end method

.method private unselectAllWords()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 171
    return-void
.end method

.method private unselectUdbWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 159
    return-void
.end method

.method private updateButtonStates()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateSelectAllButton()V

    .line 135
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateDeleteButton()V

    .line 136
    return-void
.end method

.method private updateDeleteButton()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectAllButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    .line 149
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateUdbWords()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v0, "dedupWords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v1, "word":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->getNext(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 130
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 131
    return-void
.end method

.method private updateUserDictionary()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    .line 68
    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .line 69
    return-void
.end method


# virtual methods
.method public final createDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 184
    iget-object v4, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 185
    .local v2, "numWords":I
    iget-object v4, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$plurals;->dialog_msg_delete_words:I

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 185
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 188
    .local v3, "typedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 189
    .local v0, "hasThemedIcon":Ljava/lang/Boolean;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/nuance/swype/input/R$string;->udb_delete:I

    .line 190
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 191
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v6, 0x0

    .line 193
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ok_button:I

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->okClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 191
    :cond_0
    const v4, 0x1080027

    goto :goto_0
.end method

.method public final getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "confirmDeletions"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    sget v1, Lcom/nuance/swype/input/R$layout;->personal_dictionary:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/nuance/swype/input/R$id;->btn_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    .line 77
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/nuance/swype/input/R$id;->btn_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/ImageCompoundButton;

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    new-instance v2, Lcom/nuance/swype/input/settings/PersonalDictionary$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/PersonalDictionary$1;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/widget/ImageCompoundButton;->setOnClickListener(Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;)V

    .line 91
    return-object v0
.end method

.method public final onListItemClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 100
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "word":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectUdbWord(Ljava/lang/String;)V

    .line 107
    :goto_1
    return-void

    .line 100
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    .restart local v1    # "word":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->unselectUdbWord(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUserDictionary()V

    .line 116
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUdbWords()V

    .line 117
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 118
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const-string/jumbo v1, "selected_words"

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    .line 111
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->settingsChanged:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->recordMyWordsSettings()V

    .line 247
    :cond_0
    return-void
.end method
