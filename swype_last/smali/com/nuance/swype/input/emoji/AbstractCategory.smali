.class public abstract Lcom/nuance/swype/input/emoji/AbstractCategory;
.super Ljava/lang/Object;
.source "AbstractCategory.java"


# instance fields
.field protected final iconRes:I

.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
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
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_5

    .line 52
    :cond_4
    :goto_4
    return v1

    .line 46
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 47
    goto :goto_4

    .line 48
    :cond_9
    instance-of v3, p1, Lcom/nuance/swype/input/emoji/AbstractCategory;

    if-nez v3, :cond_f

    move v1, v2

    .line 49
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 52
    .local v0, "other":Lcom/nuance/swype/input/emoji/AbstractCategory;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_1c
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getIconRes()I
    .registers 2

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
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasItems()Z
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 39
    return v0

    .line 38
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/AbstractCategory;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public abstract isDynamic()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
