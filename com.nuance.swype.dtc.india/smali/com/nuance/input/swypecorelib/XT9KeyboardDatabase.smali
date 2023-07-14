.class public Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
.super Ljava/lang/Object;
.source "XT9KeyboardDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
    }
.end annotation


# instance fields
.field public final height:I

.field public final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final pages:I

.field public final width:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pages"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->width:I

    .line 21
    iput p2, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->height:I

    .line 22
    iput p3, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->pages:I

    .line 23
    iput-object p4, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;->keys:Ljava/util/List;

    .line 24
    return-void
.end method
