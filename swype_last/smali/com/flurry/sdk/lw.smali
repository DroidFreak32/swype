.class public abstract Lcom/flurry/sdk/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field u:Ljava/io/PrintStream;

.field v:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/lw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lw;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 67
    :goto_3
    return-void

    .line 51
    :catch_4
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/flurry/sdk/lw;->u:Ljava/io/PrintStream;

    if-eqz v1, :cond_18

    .line 55
    iget-object v1, p0, Lcom/flurry/sdk/lw;->u:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    :goto_e
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/lw;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 57
    :cond_18
    iget-object v1, p0, Lcom/flurry/sdk/lw;->v:Ljava/io/PrintWriter;

    if-eqz v1, :cond_22

    .line 59
    iget-object v1, p0, Lcom/flurry/sdk/lw;->v:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 63
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method
