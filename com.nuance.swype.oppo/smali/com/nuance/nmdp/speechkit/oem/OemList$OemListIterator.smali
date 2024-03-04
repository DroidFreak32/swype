.class public abstract Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;
.super Ljava/lang/Object;
.source "OemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/oem/OemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OemListIterator"
.end annotation


# instance fields
.field private final _i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/oem/OemList;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/oem/OemList;Lcom/nuance/nmdp/speechkit/oem/OemList;)V
    .locals 1
    .param p2, "list"    # Lcom/nuance/nmdp/speechkit/oem/OemList;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;->this$0:Lcom/nuance/nmdp/speechkit/oem/OemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p2}, Lcom/nuance/nmdp/speechkit/oem/OemList;->access$000(Lcom/nuance/nmdp/speechkit/oem/OemList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;->_i:Ljava/util/Iterator;

    .line 15
    return-void
.end method


# virtual methods
.method public hasMore()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;->_i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;->_i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
