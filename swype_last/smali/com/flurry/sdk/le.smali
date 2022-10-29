.class public final Lcom/flurry/sdk/le;
.super Lcom/flurry/sdk/jz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/le$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/ld;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    const-string/jumbo v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jz;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
