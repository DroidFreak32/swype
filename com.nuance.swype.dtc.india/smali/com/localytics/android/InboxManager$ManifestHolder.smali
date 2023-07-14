.class Lcom/localytics/android/InboxManager$ManifestHolder;
.super Ljava/lang/Object;
.source "InboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManifestHolder"
.end annotation


# instance fields
.field config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field marketingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field successful:Z


# direct methods
.method public constructor <init>(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "successful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-boolean p1, p0, Lcom/localytics/android/InboxManager$ManifestHolder;->successful:Z

    .line 696
    iput-object p2, p0, Lcom/localytics/android/InboxManager$ManifestHolder;->marketingMap:Ljava/util/Map;

    .line 697
    iput-object p3, p0, Lcom/localytics/android/InboxManager$ManifestHolder;->config:Ljava/util/Map;

    .line 698
    return-void
.end method
