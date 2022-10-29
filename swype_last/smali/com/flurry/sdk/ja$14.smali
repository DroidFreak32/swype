.class final Lcom/flurry/sdk/ja$14;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/flurry/sdk/ja$14;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/ja$14;->a:Lcom/flurry/sdk/ja;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ja;ZJ)V

    .line 273
    return-void
.end method
