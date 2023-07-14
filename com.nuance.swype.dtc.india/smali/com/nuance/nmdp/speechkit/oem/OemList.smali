.class public abstract Lcom/nuance/nmdp/speechkit/oem/OemList;
.super Ljava/lang/Object;
.source "OemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;
    }
.end annotation


# instance fields
.field private final _list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/oem/OemList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/OemList;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public trim()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 73
    return-void
.end method
