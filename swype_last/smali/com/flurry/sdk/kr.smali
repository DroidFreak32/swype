.class public abstract Lcom/flurry/sdk/kr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kr$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/kt;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    .line 35
    const-string/jumbo v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/flurry/sdk/kr$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kr$1;-><init>(Lcom/flurry/sdk/kr;)V

    iput-object v0, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/ka;

    .line 53
    iput-object p2, p0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1064
    new-instance v0, Lcom/flurry/sdk/kr$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kr$2;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;)V

    .line 2060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 275
    new-instance v0, Lcom/flurry/sdk/kr$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/kr$7;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lcom/flurry/sdk/kr$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kr$4;-><init>(Lcom/flurry/sdk/kr;)V

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method final c()Z
    .registers 3

    .prologue
    .line 140
    .line 4107
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 140
    const/4 v1, 0x5

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    .line 141
    :goto_a
    return v0

    .line 140
    :cond_b
    const/4 v0, 0x0

    .line 141
    goto :goto_a
.end method
