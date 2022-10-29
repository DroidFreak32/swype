.class public Lcom/facebook/rebound/SpringSystem;
.super Lcom/facebook/rebound/BaseSpringSystem;
.source "SpringSystem.java"


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/SpringLooper;)V
    .registers 2
    .param p1, "springLooper"    # Lcom/facebook/rebound/SpringLooper;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/rebound/BaseSpringSystem;-><init>(Lcom/facebook/rebound/SpringLooper;)V

    .line 30
    return-void
.end method

.method public static create()Lcom/facebook/rebound/SpringSystem;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/rebound/SpringSystem;

    invoke-static {}, Lcom/facebook/rebound/AndroidSpringLooperFactory;->createSpringLooper()Lcom/facebook/rebound/SpringLooper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringSystem;-><init>(Lcom/facebook/rebound/SpringLooper;)V

    return-object v0
.end method
