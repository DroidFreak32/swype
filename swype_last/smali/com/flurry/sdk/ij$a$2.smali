.class final Lcom/flurry/sdk/ij$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ij$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ij$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ij$a;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flurry/sdk/ij$a$2;->a:Lcom/flurry/sdk/ij$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method
