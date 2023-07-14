.class public final Lcom/flurry/sdk/kl;
.super Lcom/flurry/sdk/kn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/kn;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/kl$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/flurry/sdk/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kz",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kz",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/kn;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/kl;->x:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/kl;->d:Lcom/flurry/sdk/kz;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/kl;)V
    .locals 2

    .prologue
    .line 14
    .line 2094
    iget-object v0, p0, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    if-eqz v0, :cond_0

    .line 2098
    invoke-virtual {p0}, Lcom/flurry/sdk/kl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    iget-object v1, p0, Lcom/flurry/sdk/kl;->x:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/kl$a;->a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 58
    .line 1066
    new-instance v0, Lcom/flurry/sdk/kl$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kl$1;-><init>(Lcom/flurry/sdk/kl;)V

    .line 1200
    iput-object v0, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    .line 61
    invoke-super {p0}, Lcom/flurry/sdk/kn;->a()V

    .line 62
    return-void
.end method
