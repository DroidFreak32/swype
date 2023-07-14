.class final Lcom/flurry/sdk/ja$9$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja$9;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja$9;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/sdk/ja$9$1;->a:Lcom/flurry/sdk/ja$9;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/ja$9$1;->a:Lcom/flurry/sdk/ja$9;

    iget-object v0, v0, Lcom/flurry/sdk/ja$9;->a:Lcom/flurry/sdk/ja;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ja;ZJ)V

    .line 194
    return-void
.end method
