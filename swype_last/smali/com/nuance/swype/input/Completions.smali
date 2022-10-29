.class public Lcom/nuance/swype/input/Completions;
.super Ljava/lang/Object;
.source "Completions.java"


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private final displayText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/CompletionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/Completions;-><init>([Landroid/view/inputmethod/CompletionInfo;)V

    .line 36
    return-void
.end method

.method public constructor <init>([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Completions;->builder:Ljava/lang/StringBuilder;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Completions;->items:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Completions;->displayText:Ljava/util/List;

    .line 28
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 29
    return-void
.end method

.method private filterLineEndings(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->builder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "addSpace":Z
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 90
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 91
    .local v1, "ch":C
    const/16 v3, 0xd

    if-eq v1, v3, :cond_1a

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1e

    .line 93
    :cond_1a
    const/4 v0, 0x1

    .line 89
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 95
    :cond_1e
    if-eqz v0, :cond_28

    .line 96
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    const/4 v0, 0x0

    .line 99
    :cond_28
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 102
    .end local v1    # "ch":C
    :cond_2e
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "ci"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 111
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/Completions;->filterLineEndings(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 113
    const/4 v0, 0x0

    .line 116
    :cond_22
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 61
    return-void
.end method

.method public get(I)Landroid/view/inputmethod/CompletionInfo;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/Completions;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/CompletionInfo;

    return-object v0
.end method

.method public getDisplayItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/Completions;->displayText:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/Completions;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 42
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 43
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->displayText:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 44
    if-eqz p1, :cond_f

    array-length v3, p1

    if-nez v3, :cond_10

    .line 57
    :cond_f
    return-void

    .line 47
    :cond_10
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_11
    array-length v3, p1

    if-ge v1, v3, :cond_f

    .line 48
    aget-object v0, p1, v1

    .line 49
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/Completions;->getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_26

    .line 53
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->displayText:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p0, Lcom/nuance/swype/input/Completions;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method
