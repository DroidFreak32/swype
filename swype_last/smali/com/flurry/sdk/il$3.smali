.class final Lcom/flurry/sdk/il$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/im;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/il;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/il;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/flurry/sdk/il$3;->a:Lcom/flurry/sdk/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/il$3;->a:Lcom/flurry/sdk/il;

    invoke-static {v0}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/il;)V

    .line 162
    return-void
.end method
