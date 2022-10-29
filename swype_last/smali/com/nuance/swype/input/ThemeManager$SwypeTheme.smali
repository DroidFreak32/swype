.class public Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwypeTheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
    }
.end annotation


# static fields
.field private static final DEFAULT_WORD_LIST_FILE_NAME:Ljava/lang/String; = "wordlist.txt"


# instance fields
.field private final currentCategoryLabel:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final keyboardPreviewId:I

.field protected mSku:Ljava/lang/String;

.field private final nameResId:I

.field private final previewResId:I

.field private resId:I

.field private final skuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final weight:I


# direct methods
.method protected constructor <init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V
    .registers 10
    .param p1, "resId"    # I
    .param p2, "nameResId"    # I
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "previewResId"    # I
    .param p6, "keyboardPreviewId"    # I
    .param p7, "currentCategoryLabel"    # Ljava/lang/String;
    .param p9, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p8, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->resId:I

    .line 130
    iput p2, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    .line 131
    iput-object p3, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->displayName:Ljava/lang/String;

    .line 133
    iput p5, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->previewResId:I

    .line 134
    iput p6, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->keyboardPreviewId:I

    .line 135
    iput-object p7, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->currentCategoryLabel:Ljava/lang/String;

    .line 136
    iput-object p8, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->skuList:Ljava/util/List;

    .line 137
    iput p9, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->weight:I

    .line 138
    return-void
.end method

.method private getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->displayName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 196
    instance-of v1, p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 198
    .local v0, "other":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    iget-object v2, v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 200
    .end local v0    # "other":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getCurrentCategoryLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->currentCategoryLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 163
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 164
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getKeyboardPreviewResId()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->keyboardPreviewId:I

    return v0
.end method

.method public getPreviewResId()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->previewResId:I

    return v0
.end method

.method public getResId()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->resId:I

    return v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuList()Ljava/util/List;
    .registers 2
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
    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->skuList:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
    .registers 2

    .prologue
    .line 219
    sget-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->EMBEDDED:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    return-object v0
.end method

.method public getStatusIcon(Landroid/content/Context;)I
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getWordListFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    const-string/jumbo v0, "wordlist.txt"

    return-object v0
.end method

.method public hasWordList()Z
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnectTheme()Z
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
