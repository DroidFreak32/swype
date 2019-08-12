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
.field public static final SELECTED_WORDS_STATE_KEY:Ljava/lang/String; = "selected_words"


# instance fields
.field private final context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/ImageButton;

.field private final listAdapter:Landroid/widget/BaseAdapter;

.field private final okClicked:Landroid/content/DialogInterface$OnClickListener;

.field private selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

.field protected final selectedWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final udbWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;Lcom/nuance/swype/input/settings/PersonalDictionary$1;)V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    .line 196
    new-instance v2, Lcom/nuance/swype/input/settings/PersonalDictionary$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/PersonalDictionary$2;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->okClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const-string v2, "selected_words"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "selectedWordsArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    .end local v0    # "selectedWordsArray":[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 62
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_1

    .line 63
    const-string v2, "Edit my dictionary"

    const-string v3, "entered"

    const-string v4, "not enter"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/PersonalDictionary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    return-object v0
.end method

.method private notifyDataChange()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 173
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 174
    return-void
.end method

.method private selectUdbWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 147
    return-void
.end method

.method private unselectUdbWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 152
    return-void
.end method

.method private updateButtonStates()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateSelectAllButton()V

    .line 128
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateDeleteButton()V

    .line 129
    return-void
.end method

.method private updateDeleteButton()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectAllButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    .line 142
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateUdbWords()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "word":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->getNext(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 123
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 124
    return-void
.end method


# virtual methods
.method public final createDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 177
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 178
    .local v1, "numWords":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$plurals;->dialog_msg_delete_words:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/nuance/swype/input/R$string;->udb_delete:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->ok_button:I

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->okClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected final deleteSelectedWords()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->userDictionaryIterator:Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->delete(Ljava/util/Set;)V

    .line 168
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUdbWords()V

    .line 169
    return-void
.end method

.method public final getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->listAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "confirmDeletions"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    sget v1, Lcom/nuance/swype/input/R$layout;->personal_dictionary:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/nuance/swype/input/R$id;->btn_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    .line 73
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v1, Lcom/nuance/swype/input/R$id;->btn_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/ImageCompoundButton;

    iput-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllButton:Lcom/nuance/swype/widget/ImageCompoundButton;

    new-instance v2, Lcom/nuance/swype/input/settings/PersonalDictionary$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/PersonalDictionary$1;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/widget/ImageCompoundButton;->setOnClickListener(Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;)V

    .line 87
    return-object v0
.end method

.method public final onListItemClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 96
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 97
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "word":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectUdbWord(Ljava/lang/String;)V

    .line 103
    :goto_1
    return-void

    .line 96
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 101
    .restart local v1    # "word":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->unselectUdbWord(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateUdbWords()V

    .line 112
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->updateButtonStates()V

    .line 113
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string v1, "selected_words"

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final prepareDialog(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 191
    .local v1, "numWords":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$plurals;->dialog_msg_delete_words:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "msg":Ljava/lang/String;
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method protected final selectAllWords()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->udbWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "word":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 159
    return-void
.end method

.method protected final unselectAllWords()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectedWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->notifyDataChange()V

    .line 164
    return-void
.end method
