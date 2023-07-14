.class Lcom/localytics/android/InAppManager$ManifestHolder;
.super Ljava/lang/Object;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManifestHolder"
.end annotation


# instance fields
.field manifest:Ljava/lang/String;

.field successful:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "manifest"    # Ljava/lang/String;

    .prologue
    .line 2409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2410
    iput-boolean p1, p0, Lcom/localytics/android/InAppManager$ManifestHolder;->successful:Z

    .line 2411
    iput-object p2, p0, Lcom/localytics/android/InAppManager$ManifestHolder;->manifest:Ljava/lang/String;

    .line 2412
    return-void
.end method
