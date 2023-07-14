.class public abstract Lcom/nuance/swype/input/emoji/AbstractCategory;
.super Ljava/lang/Object;
.source "AbstractCategory.java"


# instance fields
.field protected final iconRes:I

.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->iconRes:I

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v3, p1, Lcom/nuance/swype/input/emoji/AbstractCategory;

    if-nez v3, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 52
    .local v0, "other":Lcom/nuance/swype/input/emoji/AbstractCategory;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIconRes()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->iconRes:I

    return v0
.end method

.method public abstract getItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasItems()Z
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 39
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public abstract isDynamic()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
