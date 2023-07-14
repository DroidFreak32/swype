.class public Lcom/nuance/swype/preference/KeyboardLayoutPreference;
.super Landroid/preference/ListPreference;
.source "KeyboardLayoutPreference.java"


# instance fields
.field private final mInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field private final mKeyboardLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p3, "orientation"    # Ljava/lang/Integer;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    .line 22
    iput-object p2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 23
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    .line 26
    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 27
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 29
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Layout;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Layout;->getDisplayLayoutName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setCurrentLayout()V

    .line 38
    return-void
.end method

.method private setCurrentLayout()V
    .locals 4

    .prologue
    .line 45
    .line 1078
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 47
    .local v0, "curLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 49
    invoke-virtual {p0, v1}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setValueIndex(I)V

    .line 51
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->getDisplayLayoutName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void

    .line 1078
    .end local v0    # "curLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    goto :goto_0

    .line 47
    .restart local v0    # "curLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "index":I
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 74
    :goto_0
    return v2

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 66
    .local v1, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 73
    :goto_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Layout;->getDisplayLayoutName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent(I)V

    goto :goto_1
.end method
