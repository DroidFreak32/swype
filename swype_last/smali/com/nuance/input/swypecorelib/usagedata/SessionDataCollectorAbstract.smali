.class public abstract Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;
.super Ljava/lang/Object;
.source "SessionDataCollectorAbstract.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/usagedata/SessionDataChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;
.end method
