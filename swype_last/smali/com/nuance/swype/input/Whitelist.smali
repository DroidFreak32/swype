.class Lcom/nuance/swype/input/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# instance fields
.field private final strings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resIdList"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 44
    .local v1, "list":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_32

    .line 45
    array-length v3, v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v3, :cond_32

    aget-object v0, v1, v2

    .line 46
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2f

    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 49
    iget-object v4, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 54
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_32
    return-void
.end method

.method public static fromBlacklist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resIdList"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/nuance/swype/input/Whitelist$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/Whitelist$1;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static fromWhitelist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resIdList"    # I

    .prologue
    .line 20
    new-instance v0, Lcom/nuance/swype/input/Whitelist;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/Whitelist;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public allows(Ljava/lang/String;)Z
    .registers 3
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/Whitelist;->strings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
