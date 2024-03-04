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


# instance fields
.field private final categoryIds:Ljava/lang/String;

.field private currentCategoryId:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final keyboardPreviewId:I

.field private locked:Z

.field private final nameResId:I

.field private final previewResId:I

.field private final resId:I


# direct methods
.method protected constructor <init>(ILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "nameResId"    # I
    .param p4, "previewResId"    # I
    .param p5, "keyboardPreviewId"    # I
    .param p6, "locked"    # Z
    .param p7, "categoryIds"    # Ljava/lang/String;
    .param p8, "currentCategoryId"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->resId:I

    .line 109
    iput-object p2, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    .line 110
    iput p3, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    .line 111
    iput p4, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->previewResId:I

    .line 112
    iput p5, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->keyboardPreviewId:I

    .line 113
    iput-boolean p6, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->locked:Z

    .line 114
    iput-object p7, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->categoryIds:Ljava/lang/String;

    .line 115
    iput-object p8, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->currentCategoryId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 87
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 189
    instance-of v1, p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 191
    .local v0, "other":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    .end local v0    # "other":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCategoryIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->categoryIds:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->currentCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardPreviewResId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->keyboardPreviewId:I

    return v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->nameResId:I

    return v0
.end method

.method public getPreviewResId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->previewResId:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->resId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->locked:Z

    return v0
.end method

.method public setCurrentCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->currentCategoryId:Ljava/lang/String;

    .line 185
    return-void
.end method
