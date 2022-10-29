.class public final Lcom/nuance/nmdp/speechkit/util/List;
.super Lcom/nuance/nmdp/speechkit/oem/OemList;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/oem/OemList;-><init>(I)V

    .line 20
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/oem/OemList;-><init>(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public final copy()Lcom/nuance/nmdp/speechkit/util/List;
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v2

    .line 35
    .local v2, "size":I
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/util/List;-><init>(I)V

    .line 36
    .local v0, "copy":Lcom/nuance/nmdp/speechkit/util/List;
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/List;->iterator()Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v1

    .line 38
    .local v1, "it":Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    :goto_d
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 40
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_d

    .line 42
    :cond_1b
    return-object v0
.end method

.method public final iterator()Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    invoke-direct {v0, p0, p0}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;-><init>(Lcom/nuance/nmdp/speechkit/util/List;Lcom/nuance/nmdp/speechkit/util/List;)V

    return-object v0
.end method

.method public final toVector()Ljava/util/Vector;
    .registers 4

    .prologue
    .line 48
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 49
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/util/List;->iterator()Lcom/nuance/nmdp/speechkit/util/List$Iterator;

    move-result-object v0

    .line 50
    .local v0, "it":Lcom/nuance/nmdp/speechkit/util/List$Iterator;
    :goto_d
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 52
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    .line 54
    :cond_1b
    return-object v1
.end method
