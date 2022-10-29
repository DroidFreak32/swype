.class public final Lcom/nuance/nmdp/speechkit/util/List$Iterator;
.super Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Iterator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/util/List;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/List;Lcom/nuance/nmdp/speechkit/util/List;)V
    .registers 3
    .param p2, "list"    # Lcom/nuance/nmdp/speechkit/util/List;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/List$Iterator;->this$0:Lcom/nuance/nmdp/speechkit/util/List;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/oem/OemList$OemListIterator;-><init>(Lcom/nuance/nmdp/speechkit/oem/OemList;Lcom/nuance/nmdp/speechkit/oem/OemList;)V

    .line 14
    return-void
.end method
