.class final Lcom/flurry/sdk/iy$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iy$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iy$a;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/flurry/sdk/iy$a$1;->a:Lcom/flurry/sdk/iy$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method
