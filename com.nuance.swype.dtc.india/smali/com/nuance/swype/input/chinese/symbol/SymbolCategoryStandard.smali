.class public Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;
.super Lcom/nuance/swype/input/emoji/AbstractCategory;
.source "SymbolCategoryStandard.java"


# static fields
.field private static final TYPE_INT:I = 0x0

.field private static final TYPE_STRING:I = 0x1


# instance fields
.field private final arrayRes:I

.field private final arrayType:I

.field private context:Landroid/content/Context;

.field private emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrayRes"    # I
    .param p3, "arrayType"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "iconResId"    # I

    .prologue
    .line 30
    invoke-direct {p0, p4, p5}, Lcom/nuance/swype/input/emoji/AbstractCategory;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->context:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->arrayRes:I

    .line 33
    iput p3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->arrayType:I

    .line 34
    return-void
.end method

.method private load()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->arrayType:I

    packed-switch v1, :pswitch_data_0

    .line 60
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Bad array type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 54
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->loadCodePoints(Landroid/content/res/Resources;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->loadStrings(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadCodePoints(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->arrayRes:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 67
    .local v1, "codePoints":[I
    array-length v3, v1

    invoke-static {v3}, Lcom/nuance/swype/util/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->emojis:Ljava/util/List;

    .line 68
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v0, v1, v3

    .line 70
    .local v0, "codePoint":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 72
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->emojis:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "codePoint":I
    :cond_0
    return-void
.end method

.method private loadStrings(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 77
    iget v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->arrayRes:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "strings":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->emojis:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->emojis:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->load()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->emojis:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
